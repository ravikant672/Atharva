<%session.invalidate();%>
<% HttpSession nsession = request.getSession(false);
if(nsession!=null) {
   String data=(String)session.getAttribute( "emailId" );
   out.println(data);
}
else
	
	response.sendRedirect("index.jsp");
%>
