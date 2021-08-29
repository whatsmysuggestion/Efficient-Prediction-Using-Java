<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<%
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("Welcome to my website!");
       hitsCount = 1;
    }else{
       /* return visit */
       out.println("Welcome back to my website!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<% 
    
	 session.setAttribute("bookid",request.getParameter("bookid"));
    session.setAttribute("trust",request.getParameter("trust"));
		session.setAttribute("object",request.getParameter("object"));
	session.setAttribute("complete",request.getParameter("complete"));
	session.setAttribute("well",request.getParameter("well"));
	session.setAttribute("mess",request.getParameter("mess"));

String bookid=(String)session.getAttribute("bookid");	
String user=(String)session.getAttribute("user");		
String trust=(String)session.getAttribute("trust");
String object=(String)session.getAttribute("object");
String complete=(String)session.getAttribute("complete");
String well=(String)session.getAttribute("well");
String mess=(String)session.getAttribute("mess");


       try
                {	  
	    Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into vote values('"+bookid+"','"+user+"','"+trust+"','"+object+"','"+complete+"','"+well+"','"+mess+"','"+hitsCount+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0)
		{
		response.sendRedirect("userpage.jsp?message=success,you are successfully registered");
		}
		else
		{
			response.sendRedirect("userpage.jsp?message=fail");
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>
       
