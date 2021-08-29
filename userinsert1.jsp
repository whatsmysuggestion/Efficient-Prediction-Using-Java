<%@ page import="java.sql.*,databaseconnection.*"%>

<html>

    <head>

	<title>User Insert</title>

    </head>

    <body>

	<form>

	<% 

    session.setAttribute("user",request.getParameter("user"));
	session.setAttribute("password2",request.getParameter("password2"));
	
	String user=(String)session.getAttribute("user");
    String password2=(String)session.getAttribute("password2");		

	Connection con=null;

	Statement st=null;

	ResultSet rs=null;

	String sql="select * from user where user='"+user+"' AND password2='"+password2+"'";

	try

	{

	   con=databasecon.getconnection();

	    st=con.createStatement();

	    rs=st.executeQuery(sql);

	    if(rs.next())

	     {

		session.setAttribute("email2",user);

		 %>	

		<jsp:forward page="userpage.jsp"/>

	    	<%

	             		    

	    }

	  out.println("you are not authenticated person");

	}

	catch(SQLException e1)

	{

		

		System.out.println(e1);

	

	 }



	finally

	{

	     st.close();

	      con.close();

	}

            %>

             </form>

       </body> 	

</html>