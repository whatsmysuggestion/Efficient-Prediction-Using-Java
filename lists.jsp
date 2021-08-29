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
 <table align="center" width="868" style="border:1px solid #d2d2d2;">
 <tr>
    
    <td width="860" valign="top"> 
      <table align="center" width="740">
 <tr bgcolor="#910000">
 <td class="paragraping2" width="30%"  style="color:white;">Book ID</td>
 <td class="paragraping2" width="30%" style="color:white;">Book Name</td>
 <td class="paragraping2" width="30%" style="color:white;">Book Category</td>
 <td class="paragraping2" width="30%" style="color:white;">Book Type</td>
 </tr>
<% 

	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select url.bookid as Book_URL,rank.bookid as Book_Name,category.bookid as Book_Category,type.bookid as Book_Type from url,rank,category,type where url.id=rank.id and category.id=type.id and url.id=category.id";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
			
        <td width="102"  class="paragraping2"><% out.println(rs1.getString(1));%></td>
		 <td width="112"  class="paragraping2"><% out.println(rs1.getString(2));%></td>
		  <td width="140"  class="paragraping2"><% out.println(rs1.getString(3));%></td>
		   <td width="117"  class="paragraping2"><% out.println(rs1.getString(4));%></td>
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

