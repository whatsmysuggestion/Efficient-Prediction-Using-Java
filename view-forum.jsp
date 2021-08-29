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
<% String id=request.getParameter("id");
	
	boolean ada_kesalahan = false;
	try {
		Class.forName(driver);
	}catch (Exception ex) {
		out.println("error : " + ex);
		ada_kesalahan = true;
	}
		
	if (!ada_kesalahan) {
	
		Connection koneksi = null;
		try {
			koneksi = DriverManager.getConnection (db,user, password);
			
		}catch (Exception ex) {
			out.println ("error : " + ex);
		}
		
		if(!ada_kesalahan){ 
			ResultSet hasilQuery=null;
			String stSql="select * from forum where ID_topik='"+id+"'"; 
			try{
				PreparedStatement stm=koneksi.prepareStatement(stSql);
				hasilQuery=stm.executeQuery();
			}catch(Exception ex){
				out.println("error : "+ex);
				ada_kesalahan=true; 
			}
			
			if(!ada_kesalahan){
					%>
					<%
				
				try{
					while(hasilQuery.next()){
						String id_topik=hasilQuery.getString("ID_topik");
						String nama=hasilQuery.getString("nama");
						String email=hasilQuery.getString("email");
						String topik=hasilQuery.getString("topik");
						String isi=hasilQuery.getString("isi");
						String id_replay=hasilQuery.getString("ID_replay");
						String tanggal=hasilQuery.getString("tanggal");
							
					%>
					<tr style="border:1px solid #33FFFF; ">
						<td width="486" class="paragraping1">
						  <p><font color="#FFFF00" size="3" face="verdana"><b> 
              Topic : 
             &nbsp;&nbsp;<% out.println(topik);%>
              <br><br>
						    </b></font>
						  
						    <font class="paragraping2">
							<font  color="#FFFF99">
						  Posted : 
						  <% out.println(tanggal);%>
						  <br><br>
						  By : 
						  <% out.println(nama);%></font>
						  </font></p>
						  <p><font color="#999999" size="-4" face="verdana"><br>
					            </font>
						    
						    <font color="#000000" size="3" face="Courier New, Courier, mono">
						    <font class="paragraping" color="#FFFFFF">Question: &nbsp;&nbsp;<% out.println(isi);%></font>
				            </font>
			              </p></td>
						  <td width="111" colspan="2"><font face="verdana" size="2" color="#CC6600"><br><center>
						<a href="forum-replay.jsp?aksi=1&ID_topik=<% out.println(id_topik);%>&topik=<% out.println(topik);%> ">
						<img src="images/reply.gif" border="0" title="Reply  Forum"></a></center></font><br><br>
						
						</td>
					</tr>
					
					<%
					}
				}catch(Exception ex){
					out.println("error : "+ex);
				}
					%>
					</table>
					
					<%
			}
		}
		
		
		
		
		
		/////////////////////////////////////////////////// REPLAY /////////////////////////////////////////////////
		
		
		if(!ada_kesalahan){ 
			ResultSet hasilQuery=null;
			String stSql="select * from forum where ID_replay='"+id+"'"; 
			try{
				PreparedStatement stm=koneksi.prepareStatement(stSql);
				hasilQuery=stm.executeQuery();
			}catch(Exception ex){
				out.println("error : "+ex);
				ada_kesalahan=true; 
			}
			
			if(!ada_kesalahan){
					%><table width="988" border="0" align="center">
					  <%
				
				try{
					while(hasilQuery.next()){
						String id_topik=hasilQuery.getString("ID_topik");
						String nama=hasilQuery.getString("nama");
						String email=hasilQuery.getString("email");
						String topik=hasilQuery.getString("topik");
						String isi=hasilQuery.getString("isi");
						String id_replay=hasilQuery.getString("ID_replay");
						String tanggal=hasilQuery.getString("tanggal");
							
					%>
					<tr>
						<td width="739">
						  <p><font color="#0066CC" size="3" face="verdana">
					      <% out.println(topik);%>
					      <br>
						  </font>
						  
						  <font color="#999999" size="-4" face="verdana">
						  Posted : 
						  <% out.println(tanggal);%>
						  <br>
						  By : 
						  <% out.println(nama);%>
						  </font>
						  </p>
						  
						  <p>
						    <font color="#000000" size="3" face="Courier New, Courier, mono">
						    <% out.println(isi);%>
						    </font>
					      </p>
						  <br>
						</td>
					</tr>
					<tr>
						<td colspan="2"><font face="verdana" size="2" color="#CC6600">&nbsp;</font></td>
					</tr>
					<%
					}
				}catch(Exception ex){
					out.println("error : "+ex);
				}
					%>
					</table>
					<p align="center"><br>
					    <br>
					    <a href="buzz.jsp" style="text-decoration:none"  class="paragraping2">Forum Home</a>
					   <p>
	      <%
			}
		}
		
	}
	%> 
					

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
