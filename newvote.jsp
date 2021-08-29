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
var a = document.form.bookid.value;
var b = document.form.category.value;
var c = document.form.type.value;
var d = document.form.web.value;
if(a=="")
{
alert("Enter Book Name");
document.form.bookid.focus();
return false;
}
if(b=="")
{
alert("Enter Book Category");
document.form.category.focus();
return false;
}
if(c=="")
{
alert("Enter Book Type");
document.form.type.focus();
return false;
}
if(d=="")
{
alert("Enter Web Address");
document.form.web.focus();
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
 <table align="center" width="82%" style="border:1px solid #d2d2d2;">
 <tr>
 <td style="border:1px solid skyblue;" width="252" align="left"><font class="paragraping2"><font color="#006633" size="+1">Browse By</font></font>
 <table align="center" width="239">
 <form action="book1.jsp" method="get" name="f" onSubmit="return training();">
 <tr>
 <td width="231" height="34" class="paragraping2"><font color="#FF0000">Search by Book Name</font></td>
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
 <td width="661"  valign="top">
 
<table align="center">
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
			
        <td  colspan="2" align="center" class="paragraping2">Welcome &nbsp;&nbsp;|&nbsp;&nbsp;<% out.println(rs.getString(1));%>&nbsp;
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
<table align="left" width="661"> 
<form action="newvoteinsert.jsp" method="get" name="form" onSubmit="return valida();">
<tr bgcolor="#950000">
<td colspan="4" height="30"><font class="paragraping2"><font color="#FFFFFF">Add Your Vote</font></font></td>
</tr>
<tr>
		<td width="254" height="51"><label for="Key" class="paragraping2">Book Name:</label></td>
		<td colspan="3">
                    <input name="bookid" type="text"  style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"/>
                      &nbsp;&nbsp;
                    </td>
		</tr>
		<tr>
		<td height="51"><label for="Key" class="paragraping2">Book Category:</label></td>
		<td colspan="3">
                    <input name="category" type="text"  style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"/>
                      &nbsp;&nbsp;
                    </td>
		</tr>
		<tr>
		<td height="51"><label for="Key" class="paragraping2">Book Type:</label></td>
		<td colspan="3">
                    <input name="type" type="text"  style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"/>
                      &nbsp;&nbsp;
                    </td>
		</tr>
		<tr>
		<td height="51"><label for="Key" class="paragraping2">Web Address:</label></td>
		<td colspan="3">
                    <input name="web" type="text"  style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"/>
                      &nbsp;&nbsp;
                    </td>
		</tr>
<tr>
<td class="paragraping2">
<font color="#006600">Trustworthy</font><br>
<input type="checkbox" name="trust" value="Poor">&nbsp;&nbsp;Poor<br>
<input type="checkbox" name="trust" value="Good">&nbsp;&nbsp;Good<br>
<input type="checkbox" name="trust" value="very Good">&nbsp;&nbsp;Very Good<br>
<input type="checkbox" name="trust" value="Excellent">&nbsp;&nbsp;Excellent<br>
</td>
<td width="124" class="paragraping2">
<font color="#006600">Objective</font><br>
<input type="checkbox" name="object" value="Poor">&nbsp;&nbsp;Poor<br>
<input type="checkbox" name="object" value="Good">&nbsp;&nbsp;Good<br>
<input type="checkbox" name="object" value="Very Good">&nbsp;&nbsp;Very Good<br>
<input type="checkbox" name="object" value="Excellent">&nbsp;&nbsp;Excellent<br>
</td>
<td width="153" class="paragraping2">
<font color="#006600">Complete</font><br>
<input type="checkbox" name="complete" value="Poor">&nbsp;&nbsp;Poor<br>
<input type="checkbox" name="complete" value="Good">&nbsp;&nbsp;Good<br>
<input type="checkbox" name="complete" value="Very Good">&nbsp;&nbsp;Very Good<br>
<input type="checkbox" name="complete" value="Excellent">&nbsp;&nbsp;Excellent<br>
</td>
<td width="110" class="paragraping2">
<font color="#006600">Well-Written</font><br>
<input type="checkbox" name="well" value="Poor">&nbsp;&nbsp;Poor<br>
<input type="checkbox" name="well" value="Good">&nbsp;&nbsp;Good<br>
<input type="checkbox" name="well" value="very Good">&nbsp;&nbsp;Very Good<br>
<input type="checkbox" name="well" value="Excellent">&nbsp;&nbsp;Excellent<br>
</td>
</tr>
<tr>
<td colspan="4" class="paragraping2">Please select your ratings on a scale of Checkbox. Comments in Your Review are vital to Ranking Spatial reviews and should be descriptive, witty and pithy.</td><br>
</tr>
<tr>
<td colspan="4" class="paragraping2"><font color="#FF0000">Your Review</font></td>
</tr>
<tr>
<td><br></td>
</tr>
<tr>
<td colspan="4" align="center"><textarea name="mess" rows="8" cols="80" style="border:1px solid #C64000;font-family:verdana;font-size:12px;"></textarea></td>
</tr>
<tr>
<td class="paragraping2" colspan="4">You have 400 characters remaining for your review.</td>
</tr>
<tr>
<td><br></td>
</tr>
<tr>
<td></td>
<td align="right"><input type="submit" value="Submit" name="submit" style="border:1px solid green;color:red;font-size:15px;font-family:verdana;width:80px;height:25px;"/></td>
<td><input type="reset" value="Clear" name="reset" style="border:1px solid green;color:red;font-size:15px;font-family:verdana;width:80px;height:25px;"/></td>
<td></td>
</tr>
<tr>
<td><br></td>
</tr>
</form>
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

