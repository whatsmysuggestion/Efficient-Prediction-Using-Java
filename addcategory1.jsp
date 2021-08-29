<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
        try
                {
				
        String a=request.getParameter("bookid");
      
	  
	    Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into category(bookid) values('"+a+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0)
		{
		response.sendRedirect("adminpage.jsp?message=success,you are successfully registered");
		}
		else
		{
			response.sendRedirect("addcategory.jsp?message=fail");
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>
       
