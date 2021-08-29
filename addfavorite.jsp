<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/screen.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery.js"></script>
<script language="JavaScript">
function training()
{
var a = document.f.bookid.value;
if(a=="")
{
alert("Search by Book Name");
document.f.bookid.focus();
return false;
}
}
</script>
<script language="JavaScript">
function validation()
{
var a = document.f1.bookid.value;
if(a=="")
{
alert("Search by Category Name");
document.f1.bookid.focus();
return false;
}
}
</script>
<script language="JavaScript">
function validat()
{
var a = document.f2.bookid.value;
if(a=="")
{
alert("Search by Book Type");
document.f2.bookid.focus();
return false;
}
}
</script>
<script type="text/javascript" src="JS/prototype.js"></script>
<script type="text/javascript" src="JS/lightbox.js"></script>
<script type="text/javascript" src="JS/swfobject.js"></script>
<script language="javascript">
function valida()
{
var chks = document.getElementsByName('trust');
var chks1 = document.getElementsByName('object');
var hasChecked = false;
for (var i = 0; i < chks.length; i++)
{
if (chks[i].checked)
{
hasChecked = true;
break;
}
}
if (hasChecked == false)
{
alert("Please Select Trustworthy");
return false;
}
var chks1 = document.getElementsByName('object');
var hasChecked = false;
for (var i = 0; i < chks1.length; i++)
{
if (chks1[i].checked)
{
hasChecked = true;
break;
}
}
if (hasChecked == false)
{
alert("Please Select Objective");
return false;
}
var chks2 = document.getElementsByName('complete');
var hasChecked = false;
for (var i = 0; i < chks2.length; i++)
{
if (chks2[i].checked)
{
hasChecked = true;
break;
}
}
if (hasChecked == false)
{
alert("Please Select Complete");
return false;
}
var chks3 = document.getElementsByName('well');
var hasChecked = false;
for (var i = 0; i < chks3.length; i++)
{
if (chks3[i].checked)
{
hasChecked = true;
break;
}
}
if (hasChecked == false)
{
alert("Its Well-Written,Please Vote it");
return false;
}
return true;
}
</script>
<link href="css/Login.css" rel="stylesheet" type="text/css" />
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
 <table align="center" width="912">
 <tr bgcolor="#910000">
  <td class="paragraping2"  style="color:white;">Book ID</td>
 <td class="paragraping2"  style="color:white;">Trustworthy</td>
 <td class="paragraping2"  style="color:white;">Objective</td>
 <td class="paragraping2"  style="color:white;">Complete</td>
  <td class="paragraping2"  style="color:white;">Well-Written</td>
   <td width="168" class="paragraping2"  style="color:white;">Your Vote</td>
   <td width="153" class="paragraping2"  style="color:white;">Get Award</td>
 </tr>
<% 
    
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from vote where user='"+user+"'";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
			
        <td width="105"  class="paragraping2"><% out.println(rs1.getString(1));%></td>
		 <td width="106"  class="paragraping2"><% out.println(rs1.getString(3));%></td>
		  <td width="100"  class="paragraping2"><% out.println(rs1.getString(4));%></td>
		  <td width="114"  class="paragraping2"><% out.println(rs1.getString(5));%></td>
		    <td width="134"  class="paragraping2"><% out.println(rs1.getString(6));%></td>
			<td width="134"  class="paragraping2">&nbsp;<img src="images/icon_pencil.gif">&nbsp;<font color="#FF0000">You Have&nbsp;<font color="#006600" size="+1"><% out.println(rs1.getString(8));%></font> Votes</font></td>
			<td height="40"  class="paragraping2"><a href="getaward.jsp?<% out.println(rs1.getString(1));%>" class="paragraping2">Get Award</a></td>
		 
</tr>
<tr>
<td colspan="7" class="paragraping2">Review:&nbsp;&nbsp;<% out.println(rs1.getString(7));%></td>
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
 </td>
 </tr> 
 </table>
 <table align="center" width="100%" height="8%">
 <tr>
 <td background="images/fotter_bg.jpg" align="center"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
</body>
</html>

