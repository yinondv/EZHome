<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ page import="javax.servlet.http.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
String user=request.getParameter("user");
try{
	Entity entUser = datastore.get(KeyFactory.createKey("User",request.getParameter("user")));
	if(
		entUser==null ||
		entUser.getProperty("password")==null ||
		!entUser.getProperty("password").equals(request.getParameter("password"))
	){
		%><%=entUser%><%
		//response.sendRedirect("/login.jsp");
	}
}catch(EntityNotFoundException e){
	%>EntityNotFoundException<%
}
%><!DOCTYPE html>
<html style="height:100%">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>EZHome</title>
	</head>
	<body dir=rtl style="height:100%">
		<div style="position: absolute;top:0;right:0;height:100%;width:100%">
			<table border=1 style="width:100%">
				<tr>
					<td id="header" colspan=2>
						שלום <%=user%>
					</td>
					<td id="adbar" rowspan=2 style="width:200px;text-align:center">
						<img src="logo.png" style="width:220px;height:148px" /><br />
						<div style="width:220px;height:450px;background-color:#f00;">פרסומת</div>
					</td>
				</tr>
				<tr>
					<td id="navbar" style="width:200px">
						<input type="button" style="width:150px" value="סטטוס תקציב שבועי" />
						<br /><br /><br />
						<input type="button" style="width:150px" value="תכנית חודשית" />
						<br /><br /><br />
						<input type="button" style="width:150px" value="פרטים אישיים" />
						<br /><br /><br />
						<input type="button" style="width:150px" value="עדכון שבועי" />
						<br /><br /><br />
						<input type="button" style="width:150px" value="עדכון יומי" />
						<br /><br /><br />
					</td>
					<td id="content">תוכן</td>
				</tr>
			</table>
		</div>
	</body>
</html>