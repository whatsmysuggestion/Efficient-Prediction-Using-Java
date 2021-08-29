<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript">
javascript:window.history.forward(1);
</script>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
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
     <div class="menu_area"><a href="buzzdelete.jsp" class="comments">Comments</a> <a href="members1.jsp" class="contact">Members</a></div>
   </div>
 </div>
 <div id="body_area">
  <div class="left">
    <div class="morelinks_top"></div>
    <div class="morelinks_area">
      <div class="morelinks_head">Categories</div>
      <div class="links_morearea">
	 <a href="adminpage.jsp" class="morelink">Home</a><br /><br>
           <a href="userdetails.jsp" class="morelink">User Details</a><br /><br>
        <a href="members1.jsp" class="morelink">Members</a> <br /><br>
		<a href="edit-forum.jsp" class="morelink">Buzz Delete</a> <br /><br>
		<a href="award.jsp" class="morelink">Reward Details</a> <br /><br>
		<a href="newbook.jsp" class="morelink">User Options</a> <br /><br>
		 <a href="logout.jsp" class="morelink">Logout</a> <br /><br>
      </div>
    </div>
    <div class="morelinks_bottom"></div>
  </div>
  <div class="body_area1">
 
    <div class="mid"><br>
	 <div class="tick_head"><span class="tick_head1">Add Details</span></div><br><br>
     <table align="center" width="500" style="border:1px solid skyblue;">
	  <tr>
	 <td height="50"><img src="images/arro.jpg"></td>
	 <td><a href="addurl.jsp" style="text-decoration:none;font-family:verdana;font-size:18px;color:green;">Add BookID</a></td>
	 </tr>
	 <tr>
	 <td height="50"><img src="images/arro.jpg"></td>
	 <td><a href="addranking.jsp" style="text-decoration:none;font-family:verdana;font-size:18px;color:green;">Add Book Name</a></td>
	 </tr>
	  <tr>
	 <td height="52"><img src="images/arro.jpg"></td>
	 <td><a href="addcategory.jsp" style="text-decoration:none;font-family:verdana;font-size:18px;color:green;">Add Category Name</a></td>
	 </tr>
	  <tr>
	 <td height="48"><img src="images/arro.jpg"></td>
	 <td><a href="addtype.jsp" style="text-decoration:none;font-family:verdana;font-size:18px;color:green;">Add Type</a></td>
	 </tr>
	  <tr>
	 <td height="52"><img src="images/arro.jpg"></td>
	 <td><a href="toplist.jsp" style="text-decoration:none;font-family:verdana;font-size:18px;color:green;">Top List Users</a></td>
	 </tr>
	  <tr>
	 <td height="57"><img src="images/arro.jpg"></td>
	 <td><a href="members1.jsp" style="text-decoration:none;font-family:verdana;font-size:18px;color:green;">Members</a></td>
	 </tr>
	  
	 </table> 
    </div>
    <div class="right_area">
      <div class="right_top"></div>
      <div class="right_head">
        <div class="morelinks_head">Latest Blogs </div>
      </div>  
      <div class="right_links_area">
        <div class="links_morearea"> <a href="adminpage.jsp" class="morelink">Home</a><br />
      <a href="userdetails.jsp" class="morelink">User Details</a><br />
        <a href="members1.jsp" class="morelink">Members</a> <br />
		<a href="edit-forum.jsp" class="morelink">Buzz Delete</a> <br />
		<a href="newbook.jsp" class="morelink">User Options</a> <br /><br>
		 <a href="logout.jsp" class="morelink">Logout</a> <br />
        </div>
       
      </div>
      <div class="right_bottom"></div>
    </div>
  </div>
 </div>
 <table align="center" width="100%" height="8%">
 <tr>
 <td height="68" align="center" background="images/fotter_bg.jpg"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
</form>
</body>
</html>

