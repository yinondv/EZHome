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
						<input type="button" id="btnIncome" style="width:150px" value="הכנסות חודשיות" onClick="loadIt('income')" />
						<br /><br />
						<input type="button" id="btnExpenses" style="width:150px" value="הוצאות חודשיות" onClick="loadIt('expensess')" />
						<br /><br />
						<input type="button" id="btnTargets" style="width:150px" value="יעדים לחסכון" onClick="loadIt('targets')" />
						<br /><br />
						<input type="button" id="btnPersonal" style="width:150px" value="עדכון פרטים" onClick="loadIt('personal')" />
						<br /><br />
						סה"כ יתרת הוצאות החודש: <%=0%><br />
						יתרה חודשית: <%=0%><br />
						<br />
						ממוצע הכנסות חודשיות: <%=0%><br />
						ממוצע הוצאות חודשיות: <%=0%><br />
					</td>
					<td id="content"><iframe id="ifrmContent" style="height:100%;width:100%" ></iframe></td>
				</tr>
			</table>
		</div>
		
		<script>
			function loadIt(page){
				document.getElementById("ifrmContent").src=page+".jsp";
			}
		</script>
	</body>
</html>