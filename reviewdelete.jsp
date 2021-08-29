<%@ page import="java.sql.*,databaseconnection.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"

   "http://www.w3.org/TR/html4/loose.dtd">



<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Delete</title>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="adminpage.jsp">Admin  Home</a>

    </head>

        <%  

		int i=0;

String a[]=request.getParameterValues("checkbox");

out.println(a[0]);   

System.out.println(a[0]);   

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

for(String s:a)   // for(init:cond:increement)

{

	String sql="delete from review where user='"+s+"'";

	 i= st.executeUpdate(sql);

	

}

if(i==0){

	response.sendRedirect("award.jsp?message=fail");

		

		}

		 else{

					response.sendRedirect("award.jsp?message=success");

			}		

        %>

        </body>

</html>

