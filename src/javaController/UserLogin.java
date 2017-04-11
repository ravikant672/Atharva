package javaController;

public class UserLogin {

	String emailId,password ,name;
	public UserLogin() {
		// TODO Auto-generated constructor stub
		this.emailId = emailId;
		this.name=name;
	}
	public UserLogin(String emailId,String password){
		this.emailId =emailId;
		this.password =password;
	}
	
	public String getemailId() {
		return emailId;
	}

	public void setemailId(String emailId) {
		this.emailId =emailId;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password=password;
	}
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name=name;
	}
}
