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

import team4restaurant.mophong.UserAccount;
import team4restaurant.utils.DBUtils;
import team4restaurant.utils.MyUtils;


@WebServlet(urlPatterns = { "/login" })
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public login() {
        super();
    }
 
    // Hiển thị trang Login.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Forward tới trang /WEB-INF/views/loginView.jsp
        // (Người dùng không thể truy cập trực tiếp
        // vào các trang JSP đặt trong thư mục WEB-INF).
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
 
        dispatcher.forward(request, response);
 
    }
 
    // Khi người nhập userName & password, và nhấn Submit.
    // Phương thức này sẽ được thực thi.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String rememberMeStr = request.getParameter("rememberMe");
        boolean remember = "Y".equals(rememberMeStr);
 
        UserAccount user = null;
        boolean hasError = false;
        String errorString = null;
 
        if (userName == null || password == null || userName.length() == 0 || password.length() == 0) {
            hasError = true;
            errorString = "Bạn chưa nhập tài khoản hay mật khẩu!";
        } else {
            Connection conn = MyUtils.getStoredConnection(request);
            try {
                // Tìm user trong DB.
                user = DBUtils.login(conn, userName, password);
 
                if (user == null) {
                    hasError = true;
                    errorString = "Tài khoản hoặc mật khẩu sai";
                }
            } catch (SQLException e) {
                e.printStackTrace();
                hasError = true;
                errorString = e.getMessage();
            }
        }
        // Trong trường hợp có lỗi,
        // forward (chuyển hướng) tới /WEB-INF/views/login.jsp
        if (hasError) {
            user = new UserAccount();
            user.setUserName(userName);
            user.setPassword(password);
 
            // Lưu các thông tin vào request attribute trước khi forward.
            request.setAttribute("errorString", errorString);
            request.setAttribute("user", user);
 
            // Forward (Chuyển tiếp) tới trang /WEB-INF/views/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
 
            dispatcher.forward(request, response);
        }
        // Trường hợp không có lỗi.
        // Lưu thông tin người dùng vào Session.
        // Và chuyển hướng sang trang userInfo.
        else {
        	
            HttpSession session = request.getSession();
            MyUtils.storeLoginedUser(session, user);
 
            // Nếu người dùng chọn tính năng "Remember me".
            if (remember) {
                MyUtils.storeUserCookie(response, user);
            }
            // Ngược lại xóa Cookie
            else {
                MyUtils.deleteUserCookie(response);
            }
 
            // Redirect (Chuyển hướng) sang trang quan ly.
            response.sendRedirect(request.getContextPath() + "/homequanly");
        }
    }
 
}
 
