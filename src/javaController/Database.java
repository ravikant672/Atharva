package javaController;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {

	static Connection con=null;
	static void Connect()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Load driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost/atharva", "root", "");
			 
			System.out.println("Database connected...");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	static
	{
		Connect();
	}
	public static Connection getConnection()
	{
		return con;
		
	}
	
}
