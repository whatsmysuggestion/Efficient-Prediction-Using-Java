<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/screen.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery.js"></script>
<link href="css/Login.css" rel="stylesheet" type="text/css" />
</head>

<body>
 <div id="topheader">
   <div class="topmenu_area"><a href="index.html" class="home">Home</a> <a href="userlogin.jsp" class="about">Login</a> <a href="register.jsp" class="search">Register</a> </div>

   <div class="banner_textarea">
     <p class="banner_head">TITLE HERE</p>     
   </div>
   <div class="search_menu_banner">
     
     <div class="menu_area"><a href="addvote.jsp" class="addidea">Ranking</a> <a href="lists1.jsp" class="loginhere">Lists</a> <a href="buzz.jsp" class="comments">Comments</a> <a href="members.jsp" class="contact">Members</a></div>
   </div>
 </div>
 <table align="center" width="1000" style="border:1px solid #d2d2d2;">
 <tr>
 <td valign="top">
  <table align="center" width="740">
 <tr bgcolor="#910000">
 <td class="paragraping2" width="30%"  style="color:white;">Book ID</td>
 <td class="paragraping2" width="30%" style="color:white;">Book Name</td>
 <td class="paragraping2" width="30%" style="color:white;">Book Category</td>
 <td class="paragraping2" width="30%" style="color:white;">Book Type</td>
 </tr>
<% 
    String bookid = request.getParameter("bookid");
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	
	String sql1="Select url.bookid as Book_URL,rank.bookid as Book_Name,category.bookid as Book_Category,type.bookid as Book_Type from url,rank,category,type where url.id=rank.id and category.id=type.id and url.id=category.id";

	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
			
        <td width="102"  class="paragraping2"><% out.println(rs1.getString(1));%></td>
		<td width="112"  class="paragraping2"><% out.println(rs1.getString(2));%></td>
		  <td width="140"  class="paragraping2"><% out.println(rs1.getString(3));%></td>
		   <td width="117"  class="paragraping2"><% out.println(rs1.getString(4));%></td> 
		  
 </tr> 
 	<%
			
	     }
		
	}
	catch(SQLException e1)
	{
		out.println("OOP'S");
		System.out.println(e1);
	
	 }

	
            %> 
 </table></tr></table>
 </td
 ><table align="center" width="100%" height="8%">
 <tr>
 <td background="images/fotter_bg.jpg" align="center"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
</body>
</html>

