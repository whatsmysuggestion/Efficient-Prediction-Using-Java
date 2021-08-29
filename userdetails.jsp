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
	
     <table align="center" width="90%" style="border:1px solid #d2d2d2">
 <tr bgcolor="#910000">
  <td class="paragraping2"  style="color:white;">User</td>
  <td class="paragraping2"  style="color:white;">First Name</td>
 <td class="paragraping2"  style="color:white;">Last Name</td>
 <td class="paragraping2"  style="color:white;">DOB</td>
 <td class="paragraping2"  style="color:white;">Age </td>
  <td class="paragraping2"  style="color:white;">Telephone</td>
    <td class="paragraping2"  style="color:white;">Password</td>
	<td class="paragraping2"  style="color:white;">Email</td>
	<td class="paragraping2"  style="color:white;">Comments</td>
	<td class="paragraping2"  style="color:white;">Delete</td>
 </tr>
<% 
    
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from user";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
		<td width="117"  class="paragraping2"><% out.println(rs1.getString(1));%></td>	
        <td width="83"  class="paragraping2"><% out.println(rs1.getString(2));%></td>
		 <td width="166"  class="paragraping2"><% out.println(rs1.getString(3));%></td>
		  <td width="84"  class="paragraping2"><% out.println(rs1.getString(4));%></td>
		  <td width="43"  class="paragraping2"><% out.println(rs1.getString(6));%></td>
		    <td width="141"  class="paragraping2"><% out.println(rs1.getString(7));%></td>
			<td width="105"  class="paragraping2"><% out.println(rs1.getString(8));%></td>
			<td width="155"  class="paragraping2"><% out.println(rs1.getString(9));%></td>
			<td width="342"  class="paragraping2"><% out.println(rs1.getString(10));%></td>
			<td width="16%"><input type="checkbox" name="checkbox" value="<%=rs1.getString(9)%>"></td> 
			
	 <%
      
String email1=rs1.getString(9);

%>
</tr>
<tr>
<td colspan="10">.............................................................................................................................................................................................................................................................................................................................</td>
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
 <td background="images/fotter_bg.jpg" align="center"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
</form>
</body>
</html>

