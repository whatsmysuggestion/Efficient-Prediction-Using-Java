<%@ page contentType="text/html" import="java.util.*" %>

<%! public String toHari(int hari){
	String[] strHari={"Sunday","Monday","Wednesday","Thursday","Friday","Saturday","Sunday"};
	return strHari[hari];
}
    
public String toBulan(int bulan){
	String[] strBulan={"January","February","March","April","May","June","July", "August","September","October","November","December"};
	return strBulan[bulan];
}
%>

<% java.util.Date waktu = new java.util.Date();
	   	
   int hari = waktu.getDay();
   int tanggal = waktu.getDate();
   int bulan = waktu.getMonth();
   int tahun = waktu.getYear() + 1900;
   int jam = waktu.getHours();
   int menit = waktu.getMinutes();

  String tgl = toHari(hari) + ", " + tanggal + " " +    toBulan(bulan) + " " +  tahun + "  " + jam + ":" + menit; 
%>

