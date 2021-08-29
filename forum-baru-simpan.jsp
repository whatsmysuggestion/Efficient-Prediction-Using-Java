<html>
<head>
<title>Send GB</title>
</head>
<body>
<%@ page contentType="text/html" import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ include file="waktu.jsp" %>


<%
	String nama="'"+request.getParameter("nama")+"'";
	String email="'"+request.getParameter("email")+"'";
	String topik="'"+request.getParameter("topik")+"'";
	String isi="'"+request.getParameter("isi")+"'";
	
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
		
		if((nama.length()==2) || (email.length()==2)){
			response.sendRedirect("forum-baru.jsp?msg="+error);
		}else{
			if(!ada_kesalahan){
			
				ResultSet hasilQuery=null;
			
				String stSql="insert into forum(nama, email, topik, isi, tanggal) values ("+nama+","+email+","+topik+","+isi+", '"+tgl+"')";
				
				try{
					PreparedStatement stm=koneksi.prepareStatement(stSql);
					stm.executeUpdate();
					
					response.sendRedirect("buzz.jsp");
					
				}catch(Exception ex){
					out.println("error Query : "+ex);
					ada_kesalahan=true;
				}
			
			}
		}
	}
%>	
</body>
</html>
