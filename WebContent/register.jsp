<%@include file="header.jsp" %>
<div class="" id="registerContainer">
<div class="raviRegister">
	<div class="login-wrap " >
		<div style="margin-top:30px;overflow:hidden;">
			<button id="facebook" class="btn btn-block btn-primary" type="button">
		          <span class="pull-left">
		              <i class="fa fa-facebook"></i>
		          </span>
		          <span class="bold">Login with Facebook</span>
			</button>
		
		    <button class="btn btn-block btn-danger" type="button">
		          <span class="pull-left">
		              <i class="fa fa-google-plus"></i>
		          </span>
		          <span class="bold">Login with Google +</span>
		    </button>
		</div>	 
	
	    <p style="text-align: center;">Or</p>
	    <p>Enter your personal details below</p>
	
	    <div class="form-group">
	
	        <input name="first_name" id="firstname" placeholder="Full Name" class="form-control " type="text">
	    </div>
	    <div class="form-group">
	        <input name="email" id="email" placeholder="Email" class="form-control " maxlength="200" type="text">
	    </div>
	
	    <div class="form-group">
	
	        <input name="mobile_no" id="phone_no" placeholder="Mobile No." class="form-control " type="text">
	    </div>
	
	    <div class="radios">
	
	        <label for="radio-01" class="label_radio col-lg-6 col-sm-6">
	            <input type="radio" checked="" value="1" id="radio-01" name="sample-radio"> Male
	 		</label>
	
	        <label for="radio-02" class="label_radio col-lg-6 col-sm-6">
			   <input type="radio" value="1" id="radio-02" name="sample-radio"> Female
			 </label>
	
	    </div>
	
	    
	     <div class="form-group">
	
	         <input name="password" id="password" placeholder="Password" class="form-control" type="Password">
	     </div>
	     <label class="checkbox">
	     	<input type="checkbox" id="agree" name="agree" value="agree this condition"><%@include file="t&c.jsp" %> I agree to the <a href="#" onClick="pop('termCondition')">Terms & condition</a>.
	     </label>
	
	     <button type="submit" class="btn btn-lg btn-login btn-block " id="registerButton">
	
	         <i class="fa fa-check"></i>
	
	     </button>
	
	                    
	     <div class="">
	
		    Already Registered.
	        <a href="login.jsp">Login</a>
	     </div>
	
	</div>
</div>
</div>
<%@include file="footer.jsp" %>