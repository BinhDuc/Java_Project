package team4restaurant.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team4restaurant.mophong.BangLuong;
import team4restaurant.mophong.PhanHoi;
import team4restaurant.mophong.BookTable;
import team4restaurant.mophong.Buffet;
import team4restaurant.mophong.ListFood;
import team4restaurant.mophong.UserAccount;
import team4restaurant.utils.DBUtils;
import team4restaurant.utils.MyUtils;

/**
 * Servlet implementation class homequanly
 */
@WebServlet("/homequanly")
public class homequanly extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public homequanly() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	Connection conn = MyUtils.getStoredConnection(request);
		 
        String errorString = null;
        
//danh sach do an --------------------------------------------------
        
        List<ListFood> listF = null;
        
        try {
        	
        	listF = DBUtils.queryListFood(conn);
        	
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        System.out.println(listF);
        
 //danh sach Nhan Viên-------------------------------------------------
        
        List<UserAccount> list = null;
        
        try {
        	
        	list = DBUtils.queryUser(conn);
        	
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        System.out.println(list);
        
 //danh sach Đặt Bàn------------------------------------------------- 
        
        List<BookTable> listTB = null;
     
        try {
        	
        	listTB = DBUtils.queryBookTB(conn);
        	
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        System.out.println(listTB);


        
//danh sach Buffet------------------------------------------------- 
        List<Buffet> listBF = null;
        
        try {
        	
        	listBF = DBUtils.queryBuffet(conn);
        	
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        System.out.println(listBF);
        
//danh sach phanhoi------------------------------------------------- 
        List<PhanHoi> listPH = null;
        
        try {
        	
        	listPH = DBUtils.queryPhanHoi(conn);
        	
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        System.out.println(listPH);

      //danh sach phanhoi------------------------------------------------- 
        List<BangLuong> listBl = null;
        
        try {
        	
        	listBl = DBUtils.queryBangLuong(conn);
        	
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        System.out.println(listBl);
        
        
// Lưu thông tin vào request attribute trước khi forward sang views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("listF", listF);
        request.setAttribute("list", list);
        request.setAttribute("listTB", listTB);
        request.setAttribute("listBF", listBF);
        request.setAttribute("listPH", listPH);
        request.setAttribute("listBl", listBl);
        
        
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
 
        // Nếu người dùng đã login thì forward (chuyển tiếp) tới trang
        // /WEB-INF/views/userInfoView.jsp
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/homequanly.jsp");
        dispatcher.forward(request, response);
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
