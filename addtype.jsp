<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/Login.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">

function training()

{

	var subj=document.testnameform1.bookid.value;

	if(subj=="")

	{

		alert("Enter Type Name");

		document.testnameform1.bookid.focus();

		return false;

	}

}

</script>
</head>

<body>
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
         <div align="center"><a href="#" class="go">go</a></div>
       </div>
     </div>
     <div class="menu_area"><a href="uservote.jsp" class="addidea">Ranking</a> <a href="lists1.jsp" class="loginhere">Lists</a> <a href="buzzdelete.jsp" class="comments">Comments</a> <a href="members1.jsp" class="contact">Members</a></div>
   </div>
 </div>
 <table align="center" width="1000" style="border:1px solid #d2d2d2;" bgcolor="#FFFFCC">
 <tr>
 <td height="393">
<form name="testnameform1" method="Post" action="addtype1.jsp">
<table align="center" width="741" height="290" cellpadding="0" background="images/back.jpg">
<tr>
<td height="112" colspan="3" align="center" class="userlogin">Add Type Name</td>
</tr>
<tr>
<td width="58"></td>
<td width="188" height="91" class="yellow">Add type Name:</td>
<td width="485" class="fielditem"><input type="text" name="bookid" value=""></td>
</tr>
<tr>
<td></td>
<td width="188" height="71" class="yellow"></td>
<td width="485">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="" class="submit" onClick="return training()"></td>
</tr>
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

