<%
String authorizedUsers="";
boolean grantAccess=false;
if (session.getValue("session_username") != null && !session.getValue("session_username").equals("")) {
  if (true || (session.getValue("user_authorization")=="") || (authorizedUsers.indexOf((String)session.getValue("user_authorization")) >=0)) {
    grantAccess = true;
  }
}
if (!grantAccess) {
	String msg = "[Sorry, you need to login here]";
	response.sendRedirect("login.jsp?msg=" + msg);
  return;
}
%>