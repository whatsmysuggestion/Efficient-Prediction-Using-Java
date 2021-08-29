<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
       
				
    session.setAttribute("user",request.getParameter("user"));
	session.setAttribute("firstname",request.getParameter("firstname"));
	session.setAttribute("lastname",request.getParameter("lastname"));
	session.setAttribute("date",request.getParameter("date"));
	session.setAttribute("sport",request.getParameter("sport"));
	session.setAttribute("age",request.getParameter("age"));
	session.setAttribute("telephone",request.getParameter("telephone"));
	session.setAttribute("password2",request.getParameter("password2"));
	session.setAttribute("email2",request.getParameter("email2"));
	session.setAttribute("comments",request.getParameter("comments"));
	session.setAttribute("agree",request.getParameter("agree"));
	
String user=(String)session.getAttribute("user");
String firstname=(String)session.getAttribute("firstname");
String lastname=(String)session.getAttribute("lastname");
String date=(String)session.getAttribute("date");
String sport=(String)session.getAttribute("sport");
String age=(String)session.getAttribute("age");
String telephone=(String)session.getAttribute("telephone");
String password2=(String)session.getAttribute("password2");
String email2=(String)session.getAttribute("email2");
String comments=(String)session.getAttribute("comments");
String agree=(String)session.getAttribute("agree");

       try
                {	  
	    Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into user values('"+user+"','"+firstname+"','"+lastname+"','"+date+"','"+sport+"','"+age+"','"+telephone+"','"+password2+"','"+email2+"','"+comments+"','"+agree+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0)
		{
		response.sendRedirect("register.jsp?message=success,you are successfully registered");
		}
		else
		{
			response.sendRedirect("register.jsp?message=fail");
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>
       
