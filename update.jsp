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
   <div class="topmenu_area"><a href="userpage.jsp" class="home">Home</a> <a href="userdetails1.jsp" class="about">Details</a> </div>
   <div class="banner_textarea">
     <p class="banner_head">TITLE HERE</p>     
   </div>
   <div class="search_menu_banner">
     
     <div class="menu_area"><a href="addvote.jsp" class="addidea">Ranking</a> <a href="lists.jsp" class="loginhere">Lists</a> <a href="buzz.jsp" class="comments">Comments</a> <a href="members.jsp" class="contact">Members</a></div>
   </div>
 </div>
 <table align="center" width="1004" style="border:1px solid #d2d2d2;">
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
 <td width="740" valign="top">
 <form action="update1.jsp" method="get" name="update" onSubmit="return update();">
 <table align="center" width="487" style="border:1px solid red;">
  <% 
               String bookid=request.getQueryString();
			System.out.println(bookid);
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
         try      
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    String sql="select * from vote where bookid='"+bookid+"'";
 	    rs=st.executeQuery(sql);

	    while(rs.next())
	     {
		%>	
           
<tr>
<td colspan="2" bgcolor="#930000" align="center"><font class="paragraping2"><font color="#FFFFFF">Update Your Record Here</font></font></td>
</tr>			
<tr>
<td width="174" height="40" class="paragraping2">ID:</td>
<td width="301"><input type="text" name="bookid" size="30" readonly="" value="<% out.println(rs.getString(1));%>" class="paragraping2"></td>
</tr>
<tr>
<td height="43" class="paragraping2">Username:</td>
<td width="301"><input type="text" name="user" size="30" readonly="" value="<% out.println(rs.getString(2));%>" class="paragraping2"></td>
</tr>
<tr>
<td height="41" class="paragraping2">Trustworthy:</td>
<td width="301"><input type="text" name="trust"size="30" value="<% out.println(rs.getString(3));%>" class="paragraping2"></td>
</tr>
<tr>
<td height="41" class="paragraping2">Objective:</td>
<td width="301"><input type="text" name="object"size="30" value="<% out.println(rs.getString(4));%>" class="paragraping2"></td>
</tr>
<tr>
<td height="43" class="paragraping2">Complete:</td>
<td width="301"><input type="text" name="complete" size="30"  value="<% out.println(rs.getString(5));%>" class="paragraping2"></td>
</tr>
<tr>
<td height="45" class="paragraping2">Well-Written:</td>
<td width="301"><input type="text" name="well" size="30" value="<% out.println(rs.getString(6));%>" class="paragraping2"></td>
</tr>
<tr>
<td height="45" class="paragraping2">Message:</td>
<td width="301"><input type="text" name="mess" size="30" value="<% out.println(rs.getString(7));%>" class="paragraping2"></td>
</tr>
<tr>
<td height="36" class="paragraping2"></td>
<td width="301"><input type="submit" name="sub" value="Submit" style="border:1px solid green;font-family:verdana;font-size:12px;padding:2px 2px 2px 2px;"></td>
</tr>
            
        <%
	    }
   
	}catch(SQLException e1)	{ System.out.println("Database error"+e1.getMessage()); }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
 </table>
 </form>
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

