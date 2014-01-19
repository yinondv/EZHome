<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><!DOCTYPE html>
<html style="height:100%">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>EZHome</title>
	</head>
	<body dir=rtl style="top:0;right:0;width:100%;height:100%;margin:0;display:table">
		<div id="loading-wrapper" style="position:absolute;top:50%;right:50%">
			<div id="loading" style="position:relative;margin-top:-143px;right:-50%">
				<form method=post action="index.jsp">
			 		<table>
						<tr>
							<td colspan=2>
								<img width=220 height=148 src="logo.jpg" />
							</td>
						</tr>
						<tr>
							<td>שם משתמש</td>
							<td><input type=text name=user></td>
						</tr>
						<tr>
							<td>סיסמה</td>
							<td><input type=password name=password></td>
						</tr>
						<tr>
							<td colspan=2>
								<label><input type=checkbox> זכור אותי</label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type=submit value="הכנס" />
							</td>
						</tr>
						<tr>
							<td colspan=2>
								<a href="forgot_password.jsp">שכחתי את הסיסמה</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="signup.jsp">הרשמה</a>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>