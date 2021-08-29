<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

   <script language="javascript">
function validation()
{
    var a=document.form3.user.value;
    var b=document.form3.password2.value;
    if(a=="")
    {
        alert("Please Enter the Username");
        return false;
    }
    if(b=="")
    {
        alert("Please Enter the Password");
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
 <form name="form3" method="post" action="userinsert1.jsp" onsubmit="return validation()">
 <tr>
 <td>
 <table align="center" width="741" height="290" cellpadding="0" background="images/back.jpg">
<tr>
<td height="112" colspan="3" align="center" class="userlogin">Login Your Account</td>
</tr>
<tr>
<td width="58"></td>
<td width="188" height="91" class="yellow">UserName:</td>
<td width="485" class="fielditem"><input type="text" name="user" value=""></td>
</tr>
<tr>
<td></td>
<td width="188" height="71" class="yellow">Password:</td>
<td width="485" class="fielditem"><input type="password" name="password2" value=""></td>
</tr>
<tr>
<td></td>
<td width="188" height="71"></td>
<td width="485">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Login" style="border:1px solid white;color:red;font-size:15px;font-family:verdana;width:100px;height:30px;"></td>
</tr>

</table>
 
  </td>
 </tr>
   </form>
  </table>

 <table align="center" width="100%" height="10%">
 <tr>
 <td height="63" align="center" background="images/fotter_bg.jpg"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
 </body>
</html>
