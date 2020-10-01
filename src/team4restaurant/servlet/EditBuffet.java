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

import team4restaurant.mophong.Buffet;
import team4restaurant.mophong.UserAccount;
import team4restaurant.utils.DBUtils;
import team4restaurant.utils.MyUtils;

/**
 * Servlet implementation class EditBuffet
 */
@WebServlet(urlPatterns ="/EditBuffet")
public class EditBuffet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditBuffet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		 
        String buffetId = (String) request.getParameter("buffetId");
 
        Buffet BFT = null;
 
        String errorString = null;
 
        try {
        	BFT = DBUtils.findBuffet(conn, buffetId);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
 
        // Không có lỗi.
        // không tồn tại để edit.
        // Redirect sang trang danh sách.
        if (errorString != null && BFT == null) {
            response.sendRedirect(request.getServletPath() + "/homequanly");
            return;
        }
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
        request.setAttribute("errorString", errorString);
        request.setAttribute("BFT", BFT);
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/WEB-INF/views/editBuffet.jsp");
        dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
Connection conn = MyUtils.getStoredConnection(request);
		
		String buffetId = (String) request.getParameter("buffetId");
		String ten = (String) request.getParameter("ten");
        String gia = (String) request.getParameter("gia");  
        String note = (String) request.getParameter("note");
        
        
        
        Buffet BFT = new Buffet(buffetId,ten,gia,note);
		
		String errorString = null;
 
        if (errorString == null) {
            try {
                DBUtils.updateBuffet(conn, BFT);
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = e.getMessage();
            }
        }
        
     // Lưu thông tin vào request attribute trước khi forward sang views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("BFT", BFT);
        
     // Nếu có lỗi forward sang trang edit.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/editBuffet.jsp");
            dispatcher.forward(request, response);
        }
        // Nếu mọi thứ tốt đẹp.
        // Redirect sang trang danh sách.
        else {
            response.sendRedirect(request.getContextPath() + "/homequanly");
        }
	}

}
