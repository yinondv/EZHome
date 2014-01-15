<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ page import="javax.servlet.http.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
String user=request.getParameter("user");
Entity entUser = datastore.get(KeyFactory.createKey("User",request.getParameter("user")));
if(request.getParameter("target1")!=null){
	entUser.setProperty("target1",request.getParameter("target1"));
	entUser.setProperty("target2",request.getParameter("target2"));
	entUser.setProperty("target3",request.getParameter("target3"));
	entUser.setProperty("target4",request.getParameter("target4"));
	entUser.setProperty("target5",request.getParameter("target5"));
	entUser.setProperty("target1cost",request.getParameter("target1cost"));
	entUser.setProperty("target2cost",request.getParameter("target2cost"));
	entUser.setProperty("target3cost",request.getParameter("target3cost"));
	entUser.setProperty("target4cost",request.getParameter("target4cost"));
	entUser.setProperty("target5cost",request.getParameter("target5cost"));
	datastore.put(entUser);
}
%><!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body dir=rtl>
		<form method="post">
			<input type=hidden name="user" value="<%=request.getParameter("user")%>" />
			<h1> דף היעדים של EZHome</h1>
			<table class='article_table'>
				<tr>
					<td>יעד 1:</td>
					<td><select name="target1">
						<option value="car"         <%if(entUser.getProperty("target1")!=null && entUser.getProperty("target1").equals("car"        )){%>selected<%}%> >רכב</option>
						<option value="house"       <%if(entUser.getProperty("target1")!=null && entUser.getProperty("target1").equals("house"      )){%>selected<%}%> >דירה</option>
						<option value="electricity" <%if(entUser.getProperty("target1")!=null && entUser.getProperty("target1").equals("electricity")){%>selected<%}%> >מוצרי חשמל</option>
						<option value="happinesses" <%if(entUser.getProperty("target1")!=null && entUser.getProperty("target1").equals("happinesses")){%>selected<%}%> >אירועים</option>
					</select></td>
					<td>עלות</td>
					<td><input name='target1cost' value=<%=entUser.getProperty("target1cost")!=null ? entUser.getProperty("target1cost") : 0%>></td>
					
				</tr>
				<tr>
					<td>יעד 2:</td>
					<td><select name="target2">
						<option value="car"         <%if(entUser.getProperty("target2")!=null && entUser.getProperty("target2").equals("car"        )){%>selected<%}%> >רכב</option>
						<option value="house"       <%if(entUser.getProperty("target2")!=null && entUser.getProperty("target2").equals("house"      )){%>selected<%}%> >דירה</option>
						<option value="electricity" <%if(entUser.getProperty("target2")!=null && entUser.getProperty("target2").equals("electricity")){%>selected<%}%> >מוצרי חשמל</option>
						<option value="happinesses" <%if(entUser.getProperty("target2")!=null && entUser.getProperty("target2").equals("happinesses")){%>selected<%}%> >אירועים</option>
					</select></td>
					<td>עלות</td>
					<td><input name='target2cost' value=<%=entUser.getProperty("target2cost")!=null ? entUser.getProperty("target2cost") : 0%>></td>
				</tr>
				
				<tr>
					
					<td>יעד 3:</td>
					<td><select name="target3">
						<option value="car"         <%if(entUser.getProperty("target3")!=null && entUser.getProperty("target3").equals("car"        )){%>selected<%}%> >רכב</option>
						<option value="house"       <%if(entUser.getProperty("target3")!=null && entUser.getProperty("target3").equals("house"      )){%>selected<%}%> >דירה</option>
						<option value="electricity" <%if(entUser.getProperty("target3")!=null && entUser.getProperty("target3").equals("electricity")){%>selected<%}%> >מוצרי חשמל</option>
						<option value="happinesses" <%if(entUser.getProperty("target3")!=null && entUser.getProperty("target3").equals("happinesses")){%>selected<%}%> >אירועים</option>
					</select></td>
					<td>עלות</td>
					<td><input name='target3cost' value=<%=entUser.getProperty("target3cost")!=null ? entUser.getProperty("target3cost") : 0%>></td>
					
				</tr>
				<tr>
					
					<td>יעד 4:</td>
					<td><select name="target4">
						<option value="car"         <%if(entUser.getProperty("target4")!=null && entUser.getProperty("target4").equals("car"        )){%>selected<%}%> >רכב</option>
						<option value="house"       <%if(entUser.getProperty("target4")!=null && entUser.getProperty("target4").equals("house"      )){%>selected<%}%> >דירה</option>
						<option value="electricity" <%if(entUser.getProperty("target4")!=null && entUser.getProperty("target4").equals("electricity")){%>selected<%}%> >מוצרי חשמל</option>
						<option value="happinesses" <%if(entUser.getProperty("target4")!=null && entUser.getProperty("target4").equals("happinesses")){%>selected<%}%> >אירועים</option>
					</select></td>
					<td>עלות</td>
					<td><input name='target4cost' value=<%=entUser.getProperty("target4cost")!=null ? entUser.getProperty("target4cost") : 0%>></td>
					
				</tr>
				
				<tr>
					<td>יעד 5:</td>
					<td><select name="target5">
						<option value="car"         <%if(entUser.getProperty("target5")!=null && entUser.getProperty("target5").equals("car"        )){%>selected<%}%> >רכב</option>
						<option value="house"       <%if(entUser.getProperty("target5")!=null && entUser.getProperty("target5").equals("house"      )){%>selected<%}%> >דירה</option>
						<option value="electricity" <%if(entUser.getProperty("target5")!=null && entUser.getProperty("target5").equals("electricity")){%>selected<%}%> >מוצרי חשמל</option>
						<option value="happinesses" <%if(entUser.getProperty("target5")!=null && entUser.getProperty("target5").equals("happinesses")){%>selected<%}%> >אירועים</option>
					</select></td>
					<td>עלות</td>
					<td><input name='target5cost' value=<%=entUser.getProperty("target5cost")!=null ? entUser.getProperty("target5cost") : 0%>></td>
				</tr>
			
				
			</table>
			<input type="submit" value="שלח">
		</form>
	</body>
</html>
