<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%
if(request.getParameter("user")!=null){
	//TODO: validate input values
	String user =request.getParameter("user" );
	String pwd  =request.getParameter("pwd"  );
	String email=request.getParameter("email");
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	Entity entUser = new Entity("User",user);
	entUser.setProperty("password",pwd);
	entUser.setProperty("email",email);
	datastore.put(entUser);
	response.sendRedirect("/userData.jsp");
}else{ //no request.getParameter("user")
%><!DOCTYPE html>
<html dir="rtl">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>הרשמה</title>
	</head>
	<body>
		<form method="post" action="signup.jsp">
			<h1>הרשמה</h1>
			<table>
				<tr><td>שם משתמש</td><td><input name="user" type="text" /></td></tr>
				<tr><td>סיסמה</td><td><input name="pwd" type="text" /></td></tr>
				<tr><td>אימייל</td><td><input name="email" type="email" /></td></tr>
			</table>
			<input type="submit" value="שלח">
		</form>
	</body>
</html>
<%}%>