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
	
	
		String bookid=request.getParameter("bookid");
		String user=request.getParameter("user");
		String trust=request.getParameter("trust");
		String object=request.getParameter("object");
		String complete=request.getParameter("complete");
		String well=request.getParameter("well");
		String mess=request.getParameter("mess");
				
	try
	{
		
		con=databasecon.getconnection();
		st=con.createStatement();
		String sql="update vote set bookid='"+bookid+"',user='"+user+"',trust='"+trust+"', object='"+object+"', complete='"+complete+"',well='"+well+"',mess='"+mess+"' where bookid='"+bookid+"'";
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
