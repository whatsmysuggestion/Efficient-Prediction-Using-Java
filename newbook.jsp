<%@ page import="java.sql.*,databaseconnection.*"%>
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
<form name="idpasschbox" method="get" action="newuserdelete.jsp" onsubmit="return validation()">
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
     <div class="menu_area"> <a href="buzzdelete.jsp" class="comments">Comments</a> <a href="members1.jsp" class="contact">Members</a></div>
   </div>
 </div>
	 <div class="tick_head"><span class="tick_head1">Share User Options</span></div><br><br>
     <table align="center" width="90%">
 <tr bgcolor="#910000">
  <td height="29" class="paragraping2"  style="color:white;">Book Name</td>
  <td class="paragraping2"  style="color:white;">User</td>
    <td class="paragraping2"  style="color:white;">Book Category</td>
	  <td class="paragraping2"  style="color:white;">Book Type</td>
	    <td class="paragraping2"  style="color:white;">Web Address</td>
 <td class="paragraping2"  style="color:white;">Trustworthy</td>
 <td class="paragraping2"  style="color:white;">Objective</td>
 <td class="paragraping2"  style="color:white;">Complete</td>
  <td class="paragraping2"  style="color:white;">Well-Written</td>
    <td class="paragraping2"  style="color:white;">Hits of User</td>
	<td class="paragraping2"  style="color:white;">Delete</td>
 </tr>
<% 
    
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from newvote";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
		<td width="120"  class="paragraping2"><% out.println(rs1.getString(1));%></td>	
        <td width="187"  class="paragraping2"><% out.println(rs1.getString(2));%></td>
		 <td width="137"  class="paragraping2"><% out.println(rs1.getString(3));%></td>
		  <td width="133"  class="paragraping2"><% out.println(rs1.getString(4));%></td>
		  <td width="170"  class="paragraping2"><% out.println(rs1.getString(5));%></td>
		    <td width="120"  class="paragraping2"><% out.println(rs1.getString(6));%></td>
			 <td width="135"  class="paragraping2"><% out.println(rs1.getString(7));%></td>
			<td width="112"  class="paragraping2"><% out.println(rs1.getString(8));%></td>
			<td width="88"  class="paragraping2"><% out.println(rs1.getString(9));%></td>
			<td width="88"  class="paragraping2"><% out.println(rs1.getString(11));%></td>
			<td width="16%"><input type="checkbox" name="checkbox" value="<%=rs1.getString(2)%>"></td> 
	
</tr>
 <%
      
String user1=rs1.getString(2);

%>
<tr>
<td colspan="10">...........................................................................................................................................................................................................................................................................................................................................................................</td>
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
				<tr>
<td colspan="10" align="center"><input type="submit" style="border:1px solid green;font-family:verdana;font-size:12px;padding:2px 2px 2px 2px;" value="Delete" name="B1">
<%

  String a=request.getParameter("message");

  if((a!=null)&&(a.equalsIgnoreCase("success"))){

	out.println(" Successfully Deleted");

  }

  if((a!=null)&&(a.equalsIgnoreCase("fail"))){

	out.println("Not Deleted");

  }

  %>
		</td>
</tr>
		
 </table> 

 <table align="center" width="100%" height="8%">
 <tr>
 <td height="52" align="center" background="images/fotter_bg.jpg"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
</form>
</body>
</html>

