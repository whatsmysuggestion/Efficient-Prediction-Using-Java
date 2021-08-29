<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/Login.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function validation()
				{
						var count=0;
						for(var i=0;i<chbox.checkbox.length;i++)
						{
							if(chbox.checkbox[i].checked)
							{
								count++;
							}
						}
						if(count==0)
						{
								alert("check the messages to delete & u had limited msg");
									//document.msgchbox.checkbox.focus();
										return false;
						}						
						else
						{
									return true;
						}
				}
</script>
</head>

<body>
<form name="idpasschbox" method="get" action="userdelete.jsp" onsubmit="return validation()">
 <div id="topheader">
   <div class="topmenu_area"><a href="userpage.jsp" class="home">Home</a> <a href="userdetails1.jsp" class="about">Details</a> <a href="uservote.jsp" class="search">View</a> </div>
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
     <div class="menu_area"><a href="buzz.jsp" class="comments">Comments</a> <a href="members.jsp" class="contact">Members</a></div>
   </div>
 </div>
	<table align="center" width="848">
<% 
    String user=(String)session.getAttribute("user");
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from user where user='"+user+"'";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
	     {
		 
		
		 
		 
			String s1=rs.getString(1);
			%>
			
        <td  colspan="4" align="center" class="paragraping2">Welcome &nbsp;&nbsp;|&nbsp;&nbsp;<% out.println(rs.getString(1));%>&nbsp;
		&nbsp;|&nbsp;<a href="logout.jsp" class="paragraping2">Signout&nbsp;|</a></td>
		
		
       
		</tr>
		
	    	<%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("Your given didn't match to our database");
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
 </table>
     <table align="center" width="82%" style="border:1px solid #d2d2d2">
 <tr bgcolor="#910000">
  <td class="paragraping2"  style="color:white;">User</td>
  <td class="paragraping2"  style="color:white;">First Name</td>
 <td class="paragraping2"  style="color:white;">Last Name</td>

 <td class="paragraping2"  style="color:white;">Age </td>
  <td class="paragraping2"  style="color:white;">Telephone</td>
    <td class="paragraping2"  style="color:white;">Password</td>
	<td class="paragraping2"  style="color:white;">Email</td>
	<td class="paragraping2"  style="color:white;">Update</td>
 </tr>
<% 
    
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from user where user='"+user+"'";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
		<td width="129"  class="paragraping2"><% out.println(rs1.getString(1));%></td>	
        <td width="169"  class="paragraping2"><% out.println(rs1.getString(2));%></td>
		 <td width="181"  class="paragraping2"><% out.println(rs1.getString(3));%></td>
		  
		  <td width="146"  class="paragraping2"><% out.println(rs1.getString(6));%></td>
		    <td width="165"  class="paragraping2"><% out.println(rs1.getString(7));%></td>
			<td width="238"  class="paragraping2"><% out.println(rs1.getString(8));%></td>
			<td width="216"  class="paragraping2"><% out.println(rs1.getString(9));%></td>
			
						
	 <%
      
String email1=rs1.getString(9);

%>
</tr>
<tr>
<td colspan="8">.............................................................................................................................................................................................................................................................................................................................</td>
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

