<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/screen.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery.js"></script>
<link href="css/Login.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
function review()
{
var a = document.f4.college.value;
var b = document.f4.address.value;
var c = document.f4.best.value;
var d = document.f4.subject.value;
var e = document.f4.lang.value;
var f = document.f4.loc.value;
if(a=="")
{
alert("Enter College Name");
document.f4.college.focus();
return false;
}
if(b=="")
{
alert("Enter Address Name");
document.f4.address.focus();
return false;
}
if(c=="")
{
alert("Enter Best Friend Name");
document.f4.best.focus();
return false;
}if(d=="")
{
alert("Enter Subject Name");
document.f4.subject.focus();
return false;
}if(e=="")
{
alert("Enter Language Name");
document.f4.lang.focus();
return false;
}
if(f=="")
{
alert("Enter Location Name");
document.f4.loc.focus();
return false;
}
}
</script>
</head>

<body>
 <div id="topheader">
   <div class="topmenu_area"><a href="userpage.jsp" class="home">Home</a> <a href="userdetails1.jsp" class="about">Details</a> <a href="addvote.jsp" class="search">Vote Here</a> </div>
   <div class="banner_textarea">
     <p class="banner_head">TITLE HERE</p>     
   </div>
   <div class="search_menu_banner">
     
     <div class="menu_area"><a href="addvote.jsp" class="addidea">Ranking</a> <a href="lists.jsp" class="loginhere">Lists</a> <a href="buzz.jsp" class="comments">Comments</a> <a href="members.jsp" class="contact">Members</a></div>
   </div>
 </div>
 <table align="center" width="1123" style="border:1px solid #d2d2d2;">
 <tr>
 <td style="border:1px solid skyblue;" width="252" align="left"><font class="paragraping2"><font color="#006633" size="+1">Browse By</font></font>
 <table align="center" width="250">
 <form action="book1.jsp" method="get" name="f" onSubmit="return training();">
 <tr>
 <td width="293" height="34" class="paragraping2"><font color="#FF0000">Search by Book Name</font></td>
 </tr>
 <tr>
 <td height="54"><input type="text" name="bookid" style="border:1px solid red;font-family:verdana;font-size:12px;width:200px;padding:5px 5px 5px 5px;"></td>
 </tr>
  <tr>
 <td height="42">
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="submit" name="sub" value="Search" style="border:1px solid green;font-family:verdana;font-size:12px;padding:2px 2px 2px 2px;"></td>
 </tr>
 </form>
 </table>
 <table align="center" width="250">
  <form action="book2.jsp" method="get" name="f1" onSubmit="return validation();">
 <tr>
            <td height="34" class="paragraping2"><font color="#FF0000">Search 
              by Category </font></td>
 </tr>
 <tr>
 <td height="54"><input type="text" name="bookid" style="border:1px solid red;font-family:verdana;font-size:12px;width:200px;padding:5px 5px 5px 5px;"></td>
 </tr>
  <tr>
 <td height="42">
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="submit" name="sub" value="Search" style="border:1px solid green;font-family:verdana;font-size:12px;padding:2px 2px 2px 2px;"></td>
 </tr>
 </form>
 </table>
 <table align="center" width="250">
 <form action="book3.jsp" method="get" name="f2" onSubmit="return validat();">
 <tr>
 <td height="34" class="paragraping2"><font color="#FF0000">Search by Book Type</font></td>
 </tr>
 <tr>
 <td height="54"><input type="text" name="bookid" style="border:1px solid red;font-family:verdana;font-size:12px;width:200px;padding:5px 5px 5px 5px;"></td>
 </tr>
  <tr>
 <td height="42">
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="submit" name="sub" value="Search" style="border:1px solid green;font-family:verdana;font-size:12px;padding:2px 2px 2px 2px;"></td>
 </tr>
 </form>
 </table>
 </td>
 <td width="859" valign="top">
 
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
		<tr>
 <td width="151"><a href="userpage.jsp?<% out.println(rs.getString(1));%>" class="paragraping2"><img src="images/step1.jpg"></a></td>
 <td width="685"><a href="uservote.jsp?<% out.println(rs.getString(1));%>" class="paragraping2"><img src="images/next2.jpg"></a></td>
 </tr>
	    
 </table>
 <table align="center">
 <tr>
 <td><img src="images/book.jpg"></td>
 <td class="paragraping2"><font  color="#FF0000" size="2">You've entered for a chance to win our "Books" Sweepstakes worth $500. In August,
  one surveyor will be selected as the winner.</font></td>
 </tr>
 <tr>
 <td><img src="images/updateicon.jpg"></td>
 <td class="paragraping2">Update your Profile,Please Click to update your Profiles
 <br><br>
 <a href="profile.jsp?<% out.println(rs.getString(1));%>" class="paragraping2"><font color="#006CD9" size="+1">Update Profile</font></a>
 </td>
 </tr>
 </table>
    </td>
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
 <table align="center" width="100%" height="8%">
 <tr>
 <td background="images/fotter_bg.jpg" align="center"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
</body>
</html>

