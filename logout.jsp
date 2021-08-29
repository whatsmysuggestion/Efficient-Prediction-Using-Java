<%@ page import="java.sql.*"%>
<html>
    <head>
	<script language="JavaScript">
javascript:window.history.forward(1);
</script>
<head><title>Administrator</title>
    </head>
    <body>
	<form>
	<% 
		String uname=(String)session.getAttribute("uname");
		session.removeAttribute("uname");
		session.invalidate();
    %>	
	<jsp:forward page="index.html"/>
	</form>
       </body> 	
</html>