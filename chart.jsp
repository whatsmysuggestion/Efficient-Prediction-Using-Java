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
   <div class="topmenu_area"><a href="adminpage.jsp" class="home">Home</a> <a href="userdetails.jsp" class="about">Details</a> <a href="toplist.jsp" class="search">Vote Here</a> </div>
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
<p>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input type="submit" name="sub" value="Search" style="border:1px solid green;font-family:verdana;font-size:12px;padding:2px 2px 2px 2px;">
              </p>
              </td>
 </tr>
 </form>
 </table>
 </td>
    <td width="859" valign="top"> 
      <table align="center" width="750">


<tr>
<td class="paragraping2"><font color="#FF0000" size="+1">Ranking Analysis Chart</font></td>
</tr>
<tr>
<td><br></td>
</tr>
<tr>
<td><p><%@include file="rankchart.jsp"%></p></td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td> </td>
</tr>
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

