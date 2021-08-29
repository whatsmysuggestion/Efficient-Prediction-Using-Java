<%@ page import="java.sql.*,databaseconnection.*"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>Home Page</title>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body bgcolor="#F0FFFF">
<form name="" method="post" >
<%

	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	
	
		String user=request.getParameter("user");
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String age=request.getParameter("age");
		String telephone=request.getParameter("telephone");
		String password2=request.getParameter("password2");
		String email2=request.getParameter("email2");
				
	try
	{
		
		con=databasecon.getconnection();
		st=con.createStatement();
		String sql="update user set user='"+user+"',firstname='"+firstname+"',lastname='"+lastname+"', age='"+age+"', telephone='"+telephone+"',password2='"+password2+"',email2='"+email2+"' where user='"+user+"'";
		st.executeUpdate(sql);
		String s="";
		if(s=="")
		{
			response.sendRedirect("uservote.jsp") ;
			}
		
		else
			System.out.println(s);
	}
catch(Exception e)
{
	System.out.println(e);
}
finally
{
	con.close();
	st.close();
}
%>
</form>
</body>

</html>
