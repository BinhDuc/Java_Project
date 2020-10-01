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

import team4restaurant.mophong.BookTable;
import team4restaurant.mophong.Buffet;
import team4restaurant.utils.DBUtils;
import team4restaurant.utils.MyUtils;

/**
 * Servlet implementation class CreateBookTable
 */
@WebServlet(urlPatterns ="/CreateBookTable")
public class CreateBookTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateBookTable() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	Connection conn = MyUtils.getStoredConnection(request);
		 
        String errorString = null;
    	List<Buffet> listBF = null;
        
        try {
        	
        	listBF = DBUtils.queryBuffet(conn);
        	
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        System.out.println(listBF);
        
// Lưu thông tin vào request attribute trước khi forward sang views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("listBF", listBF);
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/datban.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Connection conn = MyUtils.getStoredConnection(request);
		
    	
		String nameCtm = (String) request.getParameter("nameCtm");
        String phoneCtm = (String) request.getParameter("phoneCtm");
        String number = (String) request.getParameter("number");
        String time = (String) request.getParameter("time");
        String note= (String) request.getParameter("note");
        
        
        BookTable booktb = new BookTable();
        booktb.setNameCtm(nameCtm);
        booktb.setPhoneCtm(phoneCtm);
        booktb.setNumber(number);
        booktb.setTime(time);
        booktb.setNote(note);
		
		String errorString = null;
		 
        
 
        if (errorString == null) {
            try {
                DBUtils.insertBookTB(conn, booktb);;
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = e.getMessage();
            }
        }
        
     // Lưu thông tin vào request attribute trước khi forward sang views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("booktb", booktb);
        
     // Nếu có lỗi .
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/datban.jsp");
            dispatcher.forward(request, response);
        }
        // Nếu mọi thứ tốt đẹp.
        // Redirect (chuyển hướng) sang trang danh sách.
        else {
        	
        	response.sendRedirect(request.getContextPath() + "/CreateBookTable");
        }
	}

}
