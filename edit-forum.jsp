<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ include file="db.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/Login.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function validation()
				{
						var count=0;
						for(var i=0;i<chbox.checkbox.length;i++)
						{
							if(chbox.checkbox[i].checked)
							{
								count++;
							}
						}
						if(count==0)
						{
								alert("check the messages to delete & u had limited msg");
									//document.msgchbox.checkbox.focus();
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
<form name="idpasschbox" method="get" action="userdelete.jsp" onsubmit="return validation()">
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
         <div align="center"><a href="searchengine" class="go">go</a></div>
       </div>
     </div>
     <div class="menu_area"><a href="buzzdelete.jsp" class="comments">Comments</a> <a href="members1.jsp" class="contact">Members</a></div>
   </div>
 </div>
 <%

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
    <table width="74%" border="0" align="center" style="border:1px solid skyblue; ">
				<tr class="paragraping2">
					<th width="186" height="21" align="left" bgcolor="#FFCC66">Topics</th>
					<th bgcolor="#FFCC66" align="left">Content</th>
					<th width="135"bgcolor="#FFCC66">Delete</th>
				</tr>
				<%
			
			try{
				while(hasilQuery.next()){
					String id_topik=hasilQuery.getString("ID_topik");
					String nama=hasilQuery.getString("nama");
					String topik=hasilQuery.getString("topik");
					String isi=hasilQuery.getString("isi");
					String tgl=hasilQuery.getString("tanggal");
						
				%>
				<tr>
					<td class="paragraping2">
						<font color="#006600"><% out.println(topik); %></font><br>
						<font color="#666666" face="verdana"><% out.println(tgl); %><br />
						<% out.println(nama); %><br /></font>
					</td>
					
					<td width="334">
						<font class="paragraping2"><% out.println(isi);%></font><br>
				  	</td>
				  
				  	<td>
						<a href="edit-forum-delete.jsp?id_topik=<% out.println(id_topik);%>" style="text-decoration:none"><img src="images/delete.jpg"></a>
				  	</td>
				</tr>
				<tr><td colspan="3"><hr></td></tr>
				<%
				}
			}catch(Exception ex){
				out.println("error : "+ex);
			}
				%></table><%
		}
	}
}
%>
	
     <table align="center" width="100%" height="8%">
 <tr>
 <td height="32" align="center" background="images/fotter_bg.jpg"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
</form>
</body>
</html>

