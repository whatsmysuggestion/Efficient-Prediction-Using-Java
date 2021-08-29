<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ include file="db.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
/* CSS Document */
.userlogin {
font-family:Verdana, Arial, Helvetica, sans-serif;
font-size:25px;
color:#FFFFFF;
height:24;
padding:15px 10px 5px 3px;
text-decoration:none;
font-weight:bold;
}

.yellow
{
font-family:Verdana;
font-size:14px;
color:yellow;
padding:2px 3px 5px 3px;
}

.fielditem {
	font-size: 12px;
	padding: 5px 2px 5px 2px;
	float: center;
	width: 300px;
	font-family:verdana;
}
.fielditem .error {
	background-image:url();
	background-repeat: no-repeat;
	background-position: 0px 2px;
	padding: 0px 0px 0px 10px;
	font-weight: bold;
		font-family:verdana;
}
.fielditem input {
	border: 2px solid #75bd24;
	background-color: #e7ffea;
	width: 300px;
		font-family:verdana;
	font-size: 15px;
	color: #333;
	padding: 6px;
	font-size: 14px;
}
.fielditem input:focus {
	border: 3px solid #F79421;
	background-color: #FFF;
}

.paragraping2
{
font-family:Verdana, Arial, Helvetica, sans-serif;
font-size:12px;
color:#2e2e2e;
padding:2px 2px 2px 2px;
text-decoration:none;
font-weight:Normal;
line-height:1.7em;
align:justify;
}
</style>
<script language="JavaScript">
function valid()
{
var a = document.form1.nama.value;
var b = document.form1.email.value;
var c = document.form1.topik.value;
var d = document.form1.isi.value;
if(a=="")
{
alert("Enter Your Name");
document.form1.nama.focus();
return false;
}
if(b=="")
{
alert("Enter Your Email ID");
document.form1.email.focus();
return false;
}
if(c=="")
{
alert("Enter Your Topic Name");
document.form1.topik.focus();
return false;
}
if(d=="")
{
alert("Enter Your Content");
document.form1.isi.focus();
return false;
}
if(e=="")
{
alert("Enter Your Password");
document.f.pass.focus();
return false;
}
if(f=="")
{
alert("Enter Your Mobile Number");
document.f.mno.focus();
return false;
}
if(isNaN(f))
{
alert("Enter the valid Mobile Number(Like : 9566137117)");
document.f.mno.focus();
return false;
}
if((f.length < 1) || (f.length > 10))
{
alert(" Your Mobile Number must be 1 to 10 Integers");
document.f.mno.select();
return false;
}
if(g=="")
{
alert("Enter Your Phone Number");
document.f.pno.focus();
return false;
}
if(isNaN(g))
{
alert("Enter the valid Phone Number(Like : 04442046569)");
document.f.pno.focus();
return false;
}
if((g.length < 1) || (g.length > 14))
{
alert(" Your Mobile Number must be 1 to 14 Integers");
document.f.pno.select();
return false;
}
if(h=="")
{
alert("Enter Your secret Code");
document.f.scode.focus();
return false;
}
}
</script>
</head>

<body>

 <div id="topheader">
   <div class="topmenu_area"><a href="index.html" class="home">Home</a> <a href="userlogin.jsp" class="about">Login</a> <a href="register.jsp" class="search">Register</a> </div>
   <div class="banner_textarea">
     <p class="banner_head">TITLE HERE</p>     
   </div>
   <div class="search_menu_banner">
     <div class="search_background">
       <div class="searchname">Search</div>
	     <form id="form1" name="form1" method="post" action="searchengine.jsp">
	   <div class="searchbox">
         <label>
         <input name="bookid" type="text" class="searchtextbox" />
         </label>
       </div>
       <div class="searchbox">
         <div align="center"><a href="searchengine.jsp" class="go">go</a></div>
       </div>
	   </form>
     </div>
     <div class="menu_area"><a href="vote.jsp" class="addidea">Vote</a> <a href="lists.jsp" class="loginhere">Lists</a> <a href="buzz.jsp" class="comments">Comments</a> <a href="members.jsp" class="contact">Members</a></div>   </div>
 </div>
 <table align="center" width="1000" style="border:1px solid #d2d2d2;" bgcolor="#FFFFCC">
 <tr>
 <td>
 <table align="center" width="993" height="201" cellpadding="0" background="images/back.jpg">
 <form action="forum-baru-simpan.jsp" method="post" name="form1" onSubmit="return valid();">
  <% 
String ID_topik=request.getParameter("ID_topik"); 
String topik=request.getParameter("topik"); 
String status;
%>
 <tr bgcolor="#FFFF99">
 <td colspan="3" class="paragraping2" align="center"><font color="#006600">NewUser Register And Post Your Comments Here</font></td>
 </tr>

			<tr >
				 <td width="65" align="left" class="paragraping2"><font face="verdana" size="2" color="#FF9966">Name</font></td><td width="51">:</td>
				 <td width="867" align="left" class="fielditem">
				 <input type="text" name="nama" style="border:1px solid white;color:red;font-size:15px;font-family:verdana;width:150px;height:25px;"></td>
			</tr>
								  
			<tr>
				<td align="left" class="paragraping2"><font face="verdana" size="2" color="#FF9966">Email</font></td><td>:</td><td align="left" class="fielditem">
				<input type="text" name="email" style="border:1px solid white;color:red;font-size:15px;font-family:verdana;width:150px;height:25px;"></td>
			</tr>
										  
			<tr>
				
            <td align="left" class="paragraping2"><font face="verdana" size="2" color="#FF9966">TOPIC</font></td>
            <td>:</td><td align="left" class="fielditem">
				<input type="text" name="topik" size="20" value="<% out.println("Re : "+topik);%>" style="border:1px solid white;color:red;font-size:15px;font-family:verdana;width:150px;height:25px;"></td>
			</tr>
										  
			<tr>
				<td align="left" class="paragraping2"><font face="verdana" size="2" color="#FF9966">Content</font></td><td>:</td><td align="left" class="fielditem">
				<textarea name="isi" cols="20" rows="5" style="border:1px solid white;color:red;font-size:15px;font-family:verdana;"></textarea></td>
			</tr>
										  
			<tr>
				<td><input type="hidden" name="ID_topik" value="topik"></td>
			</tr>
		
			<tr><td></td><td></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" style="border:1px solid white;color:red;font-size:15px;font-family:verdana;padding:3px 3px 3px 3px" value="Post">&nbsp;&nbsp;&nbsp;<input name="reset"  type="reset" style="border:1px solid white;color:red;font-size:15px;font-family:verdana;padding:3px 3px 3px 3px" value="Clear" />
			</td></tr>

	
	</form>
	
	<%
		String msg=request.getParameter("msg");
		if (msg != null){
		out.println(msg);
		}
	%>
	   
</table>
 
  </td>
 </tr>

  </table>

 <table align="center" width="100%" height="10%">
 <tr>
 <td height="63" align="center" background="images/fotter_bg.jpg"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
 </body>
</html>
