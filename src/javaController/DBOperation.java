package javaController;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

public class DBOperation {

	
	public static String authenticateUser(UserLogin v)
	 {
	 
	String userName = v.getemailId(); //Keeping user entered values in temporary variables.
	 String password = v.getPassword();
	 
	//Connection con = null;
	 Statement statement = null;
	 ResultSet resultSet = null;
	 
	String userNameDB = "";
	 String passwordDB = "";
	 
	try
	 {
		Connection con= Database.getConnection(); 
	 statement = (Statement) con.createStatement(); 
	 resultSet = statement.executeQuery("select email,password from userinfo");
	 
	while(resultSet.next()) // Until next row is present otherwise it return false
	 {
	  userNameDB = resultSet.getString("email"); //fetch the values present in database
	  passwordDB = resultSet.getString("password");
	  
	 
	  //System.out.println(userName);
	   if(userName.equals(userNameDB) && password.equals(passwordDB))
	   {
		   
	      return "SUCCESS";
	      
	   }
	   
	 }
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 return "Invalid user credentials"; // Just returning appropriate message otherwise
	 
	 }

	
	//code for forgot password 
	public static String forgotpassword(String emailId) {
		
		
		
		String userName = emailId; //Keeping user entered values in temporary variables.
		
		//Connection con = null;
		 Statement statement = null;
		 ResultSet resultSet = null;
		 
		String userNameDB = "";
		 String passwordDB = "";
		 
		try
		 {
			Connection con= Database.getConnection(); 
		 statement = (Statement) con.createStatement(); 
		 resultSet = statement.executeQuery("select email,password from userinfo");
		 
		while(resultSet.next()) // Until next row is present otherwise it return false
		 {
		  userNameDB = resultSet.getString("email"); //fetch the values present in database
		  passwordDB = resultSet.getString("password");
		  
		 
		  System.out.println(userName);
		   if(userName.equals(userNameDB))
		   {
			   if(MailOperation.sendPassword(userNameDB, passwordDB)){
				  
				   return "SUCCESS"; 
				   
				   
			   }
			
		   }
		   
		 }
		 }
		 catch(SQLException e)
		 {
		 e.printStackTrace();
		 }
		 return "You are not register with us."; // Just returning appropriate message otherwise
		 
		 }
		
		
	}
	

		

	

