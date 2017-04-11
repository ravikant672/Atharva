package controller;

import java.io.IOException;

import javaController.DBOperation;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/forgotpassword")
public class forgotpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public forgotpassword() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailId= request.getParameter("emailId");
		
		String forgotPassword= DBOperation.forgotpassword(emailId);
		if(forgotPassword.equals("SUCCESS")){
			RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
			request.setAttribute("msg","Please Check your mail for password");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
			request.setAttribute("msg", "you are not register with us");
			rd.forward(request, response);
		}
		
		
		
		
		
		
	}

}
