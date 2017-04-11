package controller;

import java.io.IOException;

import javaController.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class facebookRegister
 */
@WebServlet("/facebookRegister")
public class facebookRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public facebookRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email= request.getParameter("fb_email");
		String name=request.getParameter("fb_name");
		System.out.println(email);
		System.out.println(name);
	
		
		
		
		try{
			//Connection con= (Connection) Database.getConnection();
			
			HttpSession s = request.getSession(true);
			s.setAttribute(email, email);
			
			response.sendRedirect("index.jsp");
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
	}

}
