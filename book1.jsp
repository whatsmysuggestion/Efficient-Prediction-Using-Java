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
   <div class="topmenu_area"><a href="userpage.jsp" class="home">Home</a> <a href="userdetails1.jsp" class="about">Details</a></div>
   <div class="banner_textarea">
     <p class="banner_head">TITLE HERE</p>     
   </div>
   <div class="search_menu_banner">
     
     <div class="menu_area"><a href="addvote.jsp" class="addidea">Ranking</a> <a href="lists.jsp" class="loginhere">Lists</a> <a href="buzz.jsp" class="comments">Comments</a> <a href="members.jsp" class="contact">Members</a></div>
   </div>
 </div>
 <table align="center" width="1075" style="border:1px solid #d2d2d2;">
 <tr>
 <td style="border:1px solid skyblue;" valign="top" width="254" align="left"><font class="paragraping2"><font color="#006633" size="+1">Browse By</font></font>
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
 <td width="809" valign="top">
 
<table align="center" width="750">
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
			
        <td width="80"  colspan="4" align="center" class="paragraping2">Welcome &nbsp;&nbsp;|&nbsp;&nbsp;<% out.println(rs.getString(1));%>&nbsp;
		&nbsp;|&nbsp;<a href="logout.jsp" class="paragraping2">Signout&nbsp;|</a></td>
		
		
       
		</tr>
		<tr>
 <td><a href="userpage.jsp?<% out.println(rs.getString(1));%>" class="paragraping2"><img src="images/step1.jpg"></a></td>
 <td><a href="uservote.jsp?<% out.println(rs.getString(1));%>" class="paragraping2"><img src="images/next2.jpg"></a></td>
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
 <table align="center" width="740">
 <tr bgcolor="#910000">
 <td class="paragraping2" width="68"  style="color:white;">Book ID</td>
 <td class="paragraping2" width="310" style="color:white;">Book Name</td>
 <td class="paragraping2" width="10" style="color:white;">Book Category</td>
 <td class="paragraping2" width="97" style="color:white;">Book Type</td>
  <td class="paragraping2" width="245" style="color:white;">Rank Here</td>
 </tr>
<% 
    String bookid = request.getParameter("bookid");
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select url.bookid as Book_URL,rank.bookid as Book_Name,category.bookid as Book_Category,type.bookid as Book_Type from url,rank,category,type where rank.bookid='"+bookid+"' and rank.id=category.id and rank.id=url.id and rank.id=type.id";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
			
        <td width="68"  class="paragraping2"><% out.println(rs1.getString(1));%></td>
		 <td width="310"  class="paragraping2"><% out.println(rs1.getString(2));%></td>
		  <td width="10"  class="paragraping2"><% out.println(rs1.getString(3));%></td>
		   <td width="97"  class="paragraping2"><% out.println(rs1.getString(4));%></td>
		  <td>
 <div id="container">
<p>
<a href="#lightbox3?<% out.println(rs1.getString(1));%>" rel="lightbox3" class="lbOn"><font class="paragraping2" style="text-decoration:none;">Vote</font></a></p>
</p>
</div>
<div id="lightbox3" class="leightbox"> 
<table align="center" width="736"> 
<form action="addvoteinsert.jsp" method="get" name="form" onSubmit="return valida();">
<tr bgcolor="#950000">
<td colspan="4" height="30"><font class="paragraping2"><font color="#FFFFFF">Add Your Vote</font></font></td>
</tr>
<tr>
		<td height="51"><label for="Key" class="paragraping2">Book ID:</label></td>
		<td colspan="3">
                    <input name="bookid" type="text"  style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"/>
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
<td width="131" class="paragraping2">
<font color="#006600">Objective</font><br>
<input type="checkbox" name="object" value="Poor">&nbsp;&nbsp;Poor<br>
<input type="checkbox" name="object" value="Good">&nbsp;&nbsp;Good<br>
<input type="checkbox" name="object" value="Very Good">&nbsp;&nbsp;Very Good<br>
<input type="checkbox" name="object" value="Excellent">&nbsp;&nbsp;Excellent<br>
</td>
<td width="160" class="paragraping2">
<font color="#006600">Complete</font><br>
<input type="checkbox" name="complete" value="Poor">&nbsp;&nbsp;Poor<br>
<input type="checkbox" name="complete" value="Good">&nbsp;&nbsp;Good<br>
<input type="checkbox" name="complete" value="Very Good">&nbsp;&nbsp;Very Good<br>
<input type="checkbox" name="complete" value="Excellent">&nbsp;&nbsp;Excellent<br>
</td>
<td width="178" class="paragraping2">
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
<p class="footer" align="center"> <a href="#" class="lbAction" rel="deactivate"><font class="paragraping2" color="#FF0000">Close</font></a> </p>
</div>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-184511-1";
urchinTracker();
</script>
 </td>
</tr>
<tr>
<td colspan="5"><br><br></td>
</tr>
<tr>
<td colspan="5" bgcolor="#FFCC00" align="center" height="30" class="paragraping2">R-tree Generation</td>
</tr>
<tr class="paragraping2">
												<%
    Integer hitsCount3 = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount3 ==null || hitsCount3 == 0 ){
       /* First visit */
       out.println("!");
       hitsCount3 = 3;
    }else{
       /* return visit */
       out.println("");
       hitsCount3 = hitsCount3+2;
    }
    application.setAttribute("hitCounter", hitsCount3);
%> 
			<td height="901" valign="top" colspan="5" align="left" bgcolor="#FFCECE" class="paragraping">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Query Name<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font class="pass"><% out.println(rs1.getString(1));%></font> 
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpeg" width="35" height="72"><br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Indexing+ Technique<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font class="pass">Index+ Method</font><br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpeg" width="29" height="100">
			Database Name<br>&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font class="input" size="+1">vote</font>&nbsp;
			<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpeg" width="33" height="76"><br><br>
			&nbsp;&nbsp;&nbsp;<font class="pass"><font size="+1">rank</font></font>&nbsp;&nbsp;&nbsp;<font class="pass"><font size="+1">type</font></font>&nbsp;&nbsp;&nbsp;
			<font class="pass"><font size="+1">url</font></font>Table Name<br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/left.png" width="31" height="56">&nbsp;&nbsp;&nbsp;<img src="images/right.png" width="32" height="54"><br>
            <br>
			<font class="pass"><% out.println(rs1.getString(2));%></font>&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font class="pass"><% out.println(rs1.getString(3));%></font>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font class="input">No of Hits&nbsp;<img src="images/ul-01.gif">&nbsp;&nbsp;&nbsp;<font size="+1"><%=hitsCount3%></font></font>
			<br><br>
			&nbsp;NN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NN&nbsp;(Neighbour Node)
			</td>
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

