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
 <tr>
 <td>
 <table align="center" width="993" height="201" cellpadding="0" background="images/back.jpg">
 <% 

boolean ada_kesalahan = false;
try {
	Class.forName(driver);
}catch (Exception ex) {
	out.println("Kesalahan : " + ex);
	ada_kesalahan = true;
}
	
if (!ada_kesalahan) {
// Bentuk koneksi
	Connection koneksi = null;
	try {
		koneksi = DriverManager.getConnection (db,"root", "root");
		//out.println("Koneksi Berhasil");
	}catch (Exception ex) {
		out.println ("error : " + ex);
	}
	
	if(!ada_kesalahan){ 
		ResultSet hasilQuery=null;
		String stSql="select * from forum where ID_replay=0 order by ID_topik desc";
		try{
			PreparedStatement stm=koneksi.prepareStatement(stSql);
			hasilQuery=stm.executeQuery();
		}catch(Exception ex){
			out.println("error : "+ex);
			ada_kesalahan=true; 
		}
		
		if(!ada_kesalahan){
				%>
<tr>
<td height="112" colspan="3" align="center" class="userlogin">Forum Discussion</td>
</tr>
<tr  bgcolor="#99CCCC">
					
    <td width="337" height="36" align="left" class="paragraping2">&nbsp;&nbsp;<img src="images/topic.jpg" width="21" height="28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Topic</td>
					
    <td width="303" align="left" class="paragraping2">&nbsp;&nbsp;<img src="images/post.jpg" width="36" height="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Post</td>
				</tr>
				<%
				
			
			try{
				while(hasilQuery.next()){
					String ID_topik=hasilQuery.getString("ID_topik");
					String nama=hasilQuery.getString("nama");
					String email=hasilQuery.getString("email");
					String topik=hasilQuery.getString("topik");
					String isi=hasilQuery.getString("isi");
					String tanggal=hasilQuery.getString("tanggal");
						
				%>
				<tr style="border:1px solid white;">
					<td height="82" class="paragraping2">
					<font color="#FF8000" size="3" face="verdana"><a href="view-forum.jsp?id=<% out.println(ID_topik); %>" style="text-decoration:none ">
					<img src="images/icon.jpg">&nbsp;&nbsp;&nbsp;<font color="#FF8040">Question:&nbsp;<b><% out.println(topik);%></b></font></a></font><br>
					<br>&nbsp;&nbsp;&nbsp;<img src="images/answer.jpg">&nbsp;&nbsp;&nbsp;<font class="paragraping2"><font color="#FFFF66"><% out.println(isi);%></font></font>
					</td>
					<td>
					<font face="verdana" size="2" color="#999999"><br><% out.println(tanggal);%></font>
					<br><a href="mailto:<% out.println(email);%>" style="text-decoration:none " class="paragraping2"><font color="#FFFFFF">Posted by : <% out.println(nama);%></font></a>
					</td>
				</tr>
				<tr>
				<td height="19" colspan="2"><font color="#FFFFCC">
				...........................................................................................................................................................................................................................................................</font></td>
				</tr>
				<%
				}
			}catch(Exception ex){
				out.println("error : "+ex);
			}//penutup catch
				%>
				</table>
				<br><br>
				 <a href="forum-baru.jsp" style="text-decoration:none "><center><font face="verdana" size="-4"></font><img src="images/newuser.jpg" border="0" title="Membuat topik baru"></center><br></a>
				<%
		}
	}
}
%> 
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
