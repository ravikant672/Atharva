package javaController;


import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;

public class MailOperation {
	

	public static boolean sendPassword(String emailId,String password) {
		// TODO Auto-generated method stub
		 System.out.println(password);
		try{
			
		   	String to = emailId;
			 // Sender's email ID needs to be mentioned
		      String from = "help.learnfx@gmail.com";
		      final String username = "help.learnfx@gmail.com";//change accordingly
		      final String pass = "five*****";//change accordingly

		   // Assuming you are sending email through relay.jangosmtp.net
		      String host = "smtp.gmail.com";

		      Properties props = new Properties();
		      props.put("mail.smtp.auth", "true");
		      props.put("mail.smtp.starttls.enable", "true");
		      props.put("mail.smtp.host", host);
		      props.put("mail.smtp.port", "587");
		      
		      // Get the Session object.
		      Session session = Session.getInstance(props,new javax.mail.Authenticator() {
		         protected PasswordAuthentication getPasswordAuthentication() {
		            return new PasswordAuthentication(username, pass);
		         }
		      });
		      
		      try {
			         // Create a default MimeMessage object.
			         Message message = new MimeMessage(session);
			         

			         // Set From: header field of the header.
			         message.setFrom(new InternetAddress(from));
			         
			         // Set To: header field of the header.
			         message.setRecipients(Message.RecipientType.TO,
			         InternetAddress.parse(to));

			         // Set Subject: header field
			         message.setSubject("Atharva");

			         // Now set the actual message
			         message.setContent("<div style=\"width:500px;height:200px; margin:0 auto;border:2px solid red;border-radius:5px;color:blue;background-color:#ffffff;text-align:center;\"><table border=\"1\" style=\"width:300px;height:160px;\" ><tr style=\"padding:2px;\"><td colspan=2>Login Details</td></tr><tr style=\"padding:2px;\"><td>Login Id</td><td>"+emailId+"</td></tr><tr style=\"padding:2px;\"><td>Password</td><td>"+password+"</td</tr></table></div>", "text/html");
			        // message.setText("Register successful "+"Your login Id is"+emailId+"password is"+password);
			        // message.setText("Your password is "+new BNUD().getPassword(request.getParameter("id")));

			         // Send message
			         System.out.println(password);
			         Transport.send(message);
			         
			         System.out.println("Sent message successfully....");
			         
			     	
			      } catch (MessagingException e) {
			    	  e.printStackTrace();
			    	  
			      }
		      
		      
		      
			
			return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
		
	}
	
	
}
