<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
       
				
    session.setAttribute("college",request.getParameter("college"));
	session.setAttribute("address",request.getParameter("address"));
	session.setAttribute("best",request.getParameter("best"));
	session.setAttribute("subject",request.getParameter("subject"));
	session.setAttribute("lang",request.getParameter("lang"));
	session.setAttribute("loc",request.getParameter("loc"));
	
String user=(String)session.getAttribute("user");	
String college=(String)session.getAttribute("college");
String address=(String)session.getAttribute("address");
String best=(String)session.getAttribute("best");
String subject=(String)session.getAttribute("subject");
String lang=(String)session.getAttribute("lang");
String loc=(String)session.getAttribute("loc");

       try
                {	  
	    Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into review values('"+user+"','"+college+"','"+address+"','"+best+"','"+subject+"','"+lang+"','"+loc+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0)
		{
		response.sendRedirect("getaward1.jsp?message=success,you are successfully registered");
		}
		else
		{
			response.sendRedirect("getaward.jsp?message=fail");
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>
       
