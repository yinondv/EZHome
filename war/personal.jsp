<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ page import="javax.servlet.http.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
String user=request.getParameter("user");
Entity entUser = datastore.get(KeyFactory.createKey("User",request.getParameter("user")));
if(request.getParameter("fname")!=null){
	entUser.setProperty("fname"  ,request.getParameter("fname"  ));
	entUser.setProperty("lname"  ,request.getParameter("lname"  ));
	entUser.setProperty("email"  ,request.getParameter("email"  ));
	entUser.setProperty("phone"  ,request.getParameter("phone"  ));
	entUser.setProperty("bdate"  ,request.getParameter("bdate"  ));
	entUser.setProperty("home"   ,request.getParameter("home"   ));
	entUser.setProperty("marital",request.getParameter("marital"));
	entUser.setProperty("work"   ,request.getParameter("work"   ));

	datastore.put(entUser);
}
%><!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body dir=rtl>
		<form>
			<input type=hidden name="user" value="<%=request.getParameter("user")%>" />
			<h1> עדכון פרטים EZHome</h1>
			<table>
				<tr>
					<td>שם:</td>	
					<td><input type='text' name='fname' value=<%=entUser.getProperty("fname")!=null ? entUser.getProperty("fname") : 0%>></input></td>
				</tr>
				
				<tr>
					<td>שם משפחה:</td>
					<td><input type='text' name='lname' value=<%=entUser.getProperty("lname")!=null ? entUser.getProperty("lname") : 0%>></input></td>
				</tr>
				
				<tr>
					<td>דואר אלקטרוני:</td>
					<td><input type='text' name='email' value=<%=entUser.getProperty("email")!=null ? entUser.getProperty("email") : 0%>></input></td>
				</tr>
				
				<tr>
					<td>מספר טלפון:</td>
					<td><input type='tel' name='phone' value=<%=entUser.getProperty("phone")!=null ? entUser.getProperty("phone") : 0%>></input></td>
				</tr>
				
				<tr>
					<td>תאריך לידה:</td>
					<td><input type='date' name='bdate' value=<%=entUser.getProperty("bdate")!=null ? entUser.getProperty("bdate") : 0%>></input></td>
				</tr>
				
				<tr>
					<td>מקום מגורים:</td>
					<td><input type='text' name='home'  value=<%=entUser.getProperty("home")!=null ? entUser.getProperty("home") : 0%>></input></td>
				</tr>
				
				<tr>
					<td>מצב משפחתי:</td>
					<td>
						<select name="marital">
							<option value="bachler"  <%if(entUser.getProperty("marital")!=null && entUser.getProperty("marital").equals("bachler" )){%>selected<%}%>>רווק\ה</option>
							<option value="married"  <%if(entUser.getProperty("marital")!=null && entUser.getProperty("marital").equals("married" )){%>selected<%}%>>נשוי</option>
							<option value="alman"    <%if(entUser.getProperty("marital")!=null && entUser.getProperty("marital").equals("alman"   )){%>selected<%}%>>אלמן\ה</option>
							<option value="devorsed" <%if(entUser.getProperty("marital")!=null && entUser.getProperty("marital").equals("devorsed")){%>selected<%}%>>גרוש\ה</option>
						</select>
					</td>	
				</tr>
				
				<tr>
					<td>מקום עבודה:</td>
					<td><input type='text' name='work'  value=<%=entUser.getProperty("work")!=null ? entUser.getProperty("work") : 0%>></input></td>
				</tr>
			</table>
			<input type=submit value="שלח">
		</form>
	</body>
</html>