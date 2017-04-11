<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Atharva:An online web application to get advised by expert</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/main.css" rel="stylesheet">
    
    	 <script>	//<!-- script for facebook login -->	
				 window.fbAsyncInit = function() {
					    FB.init({
					      appId      : '995151143878750', // Set YOUR APP ID
					      //channelUrl : 'http://hayageek.com/examples/oauth/facebook/oauth-javascript/channel.html', // Channel File
					      status     : true, // check login status
					      cookie     : true, // enable cookies to allow the server to access the session
					      xfbml      : true,  // parse XFBML
					      version    : 'v2.5'
					    });
					 
					    FB.Event.subscribe('auth.authResponseChange', function(response) 
					    {
					     if (response.status === 'connected') 
					    {
					        //document.getElementById("message").innerHTML +=  "<br>Connected to Facebook";
					        //document.getElementById("status").innerHTML=str;
					        document.getElementById("fb_email").value=fb_email;
					        document.getElementById("fb_name").value=fb_name;
					        document.getElementById("fb_form").submit();
					       
					        
					        
					        //SUCCESS
					 
					    }    
					    else if (response.status === 'not_authorized') 
					    {
					        document.getElementById("message").innerHTML +=  "<br>Failed to Connect";
					 
					        //FAILED
					    } else 
					    {
					        document.getElementById("message").innerHTML +=  "<br>Logged Out";
					 
					        //UNKNOWN ERROR
					    }
					    }); 
					 
					    };
					 
					    function Login()
					    {
					 
					        FB.login(function(response) {
					           if (response.authResponse) 
					           {
					                getUserInfo();
					            } else 
					            {
					             console.log('User cancelled login or did not fully authorize.');
					            }
					         },{scope: 'email,user_photos,user_videos,public_profile,user_birthday'});
					 
					    }
					 
					  function getUserInfo() {
					        FB.api('/me', {fields: 'name,email,gender'}, function(response) {
					 		var fb_email= response.email;
					 		var fb_name=response.name;
					      var str="<b>Name</b> : "+response.name+"<br>";
					         
					          str +="<b>Email:</b> "+response.email+"<br>";
					          str +="<b>Gender:</b> "+response.gender+"<br>";
					          
					          str += getPhoto();
					          
					        
					    });
					    }
					    function getPhoto()
					    {
					      FB.api('/me/picture?type=normal', function(response) {
					 
					          var str="<br/><b>Pic</b> : <img src='"+response.data.url+"'/>";
					          
					 
					    });
					 
					    }
					   
					  // Load the SDK asynchronously
					  (function(d){
					     var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
					     if (d.getElementById(id)) {return;}
					     js = d.createElement('script'); js.id = id; js.async = true;
					     js.src = "//connect.facebook.net/en_US/all.js";
					     ref.parentNode.insertBefore(js, ref);
					   }(document));
					 
		
		</script>

  </head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp">Atharva</a>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     <%if(session.getAttribute("email")==null || session.getAttribute("email")==""){
    	 %>
     
      <ul class="nav navbar-nav navbar-right">
      	<li><form id="fb_form" action="facebookRegister" method="post">
      		<input type="hidden" name="fb_email" id="fb_email">
      		<input type="hidden" name="fb_name" id="fb_name">
      		<input onclick="Login()" type="button"name="" value="Facebook Login" >
      		</form>
      	</li>
      	<li style="margin-top:10px;"><form action="loginServlet" method="post">
      		<input type="text" name="emailId" placeholder="Enter your email"style="height:25px;">
      		<input type="text" name="password" placeholder="enter password" style="height:25px;margin-top:5px;">
      		<span class="glyphicon glyphicon-log-in"></span><button type="submit" value="Submit">Submit</button>
      	</li>
      	</form>
      	<li><a href="register.jsp"><button>signUp</button></a></li>
      	
      </ul>
      <% }
     else{
     %>
     <div>
     	<div class="nav navbar-nav navbar-right"> <a href="#"><%= session.getAttribute("email") %></a><br>
     	<a href="logout.jsp">logout</a></div>
     </div>
     <% } %>
    </div>
  </div>
</nav>


 		
 
 		
 	
    
    
    
    
