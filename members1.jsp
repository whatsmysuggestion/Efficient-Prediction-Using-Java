<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/Login.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form1" name="form1" method="post" action="searchengine.jsp">
 <div id="topheader">
   <div class="topmenu_area"><a href="adminpage.jsp" class="home">Home</a> <a href="userdetails.jsp" class="about">Details</a> <a href="addranking.jsp" class="search">Add</a> </div>
   <div class="banner_textarea">
     <p class="banner_head">TITLE HERE</p>     
   </div>
   <div class="search_menu_banner">
     <div class="search_background">
       <div class="searchname">Search</div>
       <div class="searchbox">
         <label>
         <input name="textfield" type="text" class="searchtextbox" />
         </label>
       </div>
       <div class="searchbox">
         <div align="center"><a href="searchengine" class="go">go</a></div>
       </div>
     </div>
     <div class="menu_area"> <a href="buzzdelete.jsp" class="comments">Comments</a> <a href="members1.jsp" class="contact">Members</a></div>
   </div>
 </div>
	 <div class="tick_head"><span class="tick_head1">Add Details</span></div><br><br>
     <table align="center" width="70%">
 <tr bgcolor="#910000">
  <td class="paragraping2"  style="color:white;">Book Name</td>
  <td class="paragraping2"  style="color:white;">User</td>
 <td class="paragraping2"  style="color:white;">Trustworthy</td>
 <td class="paragraping2"  style="color:white;">Objective</td>
 <td class="paragraping2"  style="color:white;">Complete</td>
  <td class="paragraping2"  style="color:white;">Well-Written</td>
    <td class="paragraping2"  style="color:white;">Hits of User</td>
 </tr>
<% 
    
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from vote";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
		<td width="131"  class="paragraping2"><% out.println(rs1.getString(1));%></td>	
        <td width="194"  class="paragraping2"><% out.println(rs1.getString(2));%></td>
		 <td width="241"  class="paragraping2"><% out.println(rs1.getString(3));%></td>
		  <td width="152"  class="paragraping2"><% out.println(rs1.getString(4));%></td>
		  <td width="114"  class="paragraping2"><% out.println(rs1.getString(5));%></td>
		    <td width="158"  class="paragraping2"><% out.println(rs1.getString(6));%></td>
			<td width="131"  class="paragraping2"><% out.println(rs1.getString(8));%></td>
	
</tr>
<tr>
<td colspan="7">.....................................................................................................................................................................................................................................</td>
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
		
 </table> 

 <table align="center" width="100%" height="8%">
 <tr>
 <td background="images/fotter_bg.jpg" align="center"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
</form>
</body>
</html>

