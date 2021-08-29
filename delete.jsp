<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title></title>
    </head>
    <body>
<font color="green" size="6" face="Timesnewroman">Succesfully Deleted the Student
List</font> 
<hr>
	<form name="del"><font size="4">
			
		
	<% 
                	String bookid=request.getQueryString();
	
			
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
         try      
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    String sql="delete from vote where bookid='"+bookid+"'";
 	    st.executeUpdate(sql);
			response.sendRedirect("uservote.jsp");
		
	}catch(SQLException e1)	{ System.out.println("Database error"+e1.getMessage()); }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
			
             </form>
       </body> 	
</html>