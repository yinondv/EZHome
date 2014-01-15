<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ page import="javax.servlet.http.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
String user=request.getParameter("user");
Entity entUser = datastore.get(KeyFactory.createKey("User",request.getParameter("user")));
if(request.getParameter("salary")!=null){
	entUser.setProperty("salary",request.getParameter("salary"));
	entUser.setProperty("misc_income",request.getParameter("misc_income"));
	datastore.put(entUser);
}
%><!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body dir=rtl style="height:100%">
		<form method=post>
			<input type=hidden name="user" value="<%=request.getParameter("user")%>" />
			<h1 align="center"> עדכון הכנסה חודשית EZHome</h1>
			<table>
				<tr>
					<td>משכורת:</td>
					<td><input type='text' name='salary' value=<%=entUser.getProperty("salary")!=null ? entUser.getProperty("salary") : 0%>></input></td>
					
				</tr>
				<tr>
					<td>מקורות הכנסה אחרים</td>
					<td><input type='text' name='misc_income' value=<%=entUser.getProperty("misc_income")!=null ? entUser.getProperty("misc_income") : 0%>></input></td>
				</tr>
				<tr>
					<td><input type="submit" value="שלח"></td>
				</tr>
			</table>
		</form>
	</body>
</html>