<%@include file="header.jsp" %>
<div class="" id="registerContainer">
<div class="raviRegister">
	<div class="login-wrap ">
	<div style="margin-top:30px;overflow:hidden;">
		
		<button id="loginButtonFb" class="btn btn-block btn-primary" type="button" style="cursor:pointer;" onclick="Login()">
	          <span class="pull-left">
	              <i class="fa fa-facebook"></i>
	          </span>
	          <span class="bold" >Login with Facebook</span>
		</button>
	
	   <!--  <button class="btn btn-block btn-danger" type="button">
	          <span class="pull-left">
	              <i class="fa fa-google-plus"></i>
	          </span>
	          <span class="bold">Login with Google +</span>
	   </button>  -->
	</div>
	
	    <p style="text-align: center;">Or</p>
	    
	<form action="loginServlet" method="post">
	    <div class="form-group">
	        <input name="emailId" id="email" placeholder="Email" class="form-control " maxlength="200" type="text">
	    </div>
	
	    
	     <div class="form-group">
	
	         <input name="password" id="password" placeholder="Password" class="form-control" type="Password">
	     </div>
	     
	     <button type="submit" class="btn btn-lg btn-login btn-block " id="registerButton">
	
	         <i class="fa fa-check"></i>
	
	     </button>
	</form>
	
	<%
	String m=(String)request.getAttribute("msg");
	if(m!=null)
	{
		%><script>alert("<%=m %>")</script><% 
		} %>
	 <div style="font-style:italic;"><a href="forgot-password.jsp"><b>forgot password</b></a></div> 
	</div>
</div>
</div>
<%@include file="footer.jsp" %>