package team4restaurant.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team4restaurant.mophong.BangLuong;
import team4restaurant.mophong.UserAccount;
import team4restaurant.utils.DBUtils;
import team4restaurant.utils.MyUtils;

/**
 * Servlet implementation class CreateBL
 */
@WebServlet(urlPatterns ="/CreateBL")
public class CreateBL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateBL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
   	 
        // Kiểm tra người dùng đã đăng nhập (login) chưa.
        UserAccount loginedUser = MyUtils.getLoginedUser(session);
 
        // Nếu chưa đăng nhập (login).
        if (loginedUser == null) {
            // Redirect (Chuyển hướng) tới trang login.
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        // Lưu thông tin vào request attribute trước khi forward (chuyển tiếp).
        request.setAttribute("user", loginedUser);
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/CreateBl.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		
		
        String idbl = (String) request.getParameter("idbl");
		String chamcongStr = (String) request.getParameter("chamcong");
        String hesoStr = (String) request.getParameter("heso");
        float chamcong = 0;
        float heso = 0;
        try {
        	chamcong = Float.parseFloat(chamcongStr);
			heso = Float.parseFloat(hesoStr);
		} catch (Exception e) {
			// TODO: handle exception
		}  
        
        
        BangLuong CRBL = new BangLuong();
        CRBL.setIdbl(idbl);
        CRBL.setChamcong(chamcong);
        CRBL.setHeso(heso);
		
		String errorString = null;
		 
        
 
        if (errorString == null) {
            try {
                DBUtils.insertBL(conn, CRBL);;
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = e.getMessage();
            }
        }
        
     // Lưu thông tin vào request attribute trước khi forward sang views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("CRBL", CRBL);
        
     // Nếu có lỗi .
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/CreateBl.jsp");
            dispatcher.forward(request, response);
        }
        // Nếu mọi thứ tốt đẹp.
        // Redirect (chuyển hướng) sang trang danh sách.
        else {
            response.sendRedirect(request.getContextPath() + "/homequanly");
        }
	}

}
