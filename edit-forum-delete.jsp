<html>
<head>
<title>Delete Forum</title>
</head>
<body>
<%@ page contentType="text/html" import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ include file="waktu.jsp" %>


<%
	String id_topik=request.getParameter("id_topik");
	
	String error="<b><font color=red>Sorry your data is not complete!!</font></b>";
	
	boolean ada_kesalahan=false;
	try{
		Class.forName(driver);
	}catch(Exception ex){
		out.println("error : "+ex);
		ada_kesalahan=true;
	}
	
	if(!ada_kesalahan){
	//buat koneksi
		Connection koneksi=null;
		try{
			koneksi=DriverManager.getConnection(db,user,password);
		}catch(Exception ex){
			out.println("error : "+ex);
			ada_kesalahan=true;
		}
		
		if(!ada_kesalahan){
		
			ResultSet hasilQuery=null;
			
			String stSql="delete from forum where ID_topik ='" + id_topik + "'";
			
			try{
				PreparedStatement stm=koneksi.prepareStatement(stSql);
				stm.executeUpdate();
				
				%>
				<script language="javascript">alert("Your data has been deleted!")</script>
				<script> document.location.href='edit-forum.jsp'; </script>
				<%
				
			}catch(Exception ex){
				out.println("error Query : "+ex);
				ada_kesalahan=true;
			}	
		}
	}
%>	
</body>
</html>
