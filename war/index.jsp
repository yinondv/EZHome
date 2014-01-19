<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ page import="javax.servlet.http.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
String user=request.getParameter("user");
Entity entUser=null;
try{
	entUser = datastore.get(KeyFactory.createKey("User",request.getParameter("user")));
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
	<body dir=rtl style="height:95%;background-color:#eee">
		<div style="position: absolute;top:0;right:0;height:100%;width:100%">
			<table border=1 style="height:100%;width:100%">
				<tr style="height:1px">
					<td id="header" colspan=2>
						<!--<a href="http://www.daatemet.org.il" target="_blank">
							<table><tr>
							<td width="112" height="147"><img src="http://www.daatemet.org.il/images/left_animation.gif"></td>
							<td background="/images/bg_slogan.gif" width="100%" dir="RTL"><div class="slogan">התנועה לשחרור מהדת, לקידום הנאורות וההשכלה</div></td>
							<td width="112" height="147"><img src="http://www.daatemet.org.il/images/right_animation.gif"></td>
							</tr></table>
						</a>-->
						<a href="http://www.paamonim.org/"><img src="ad-h1.jpg" /></a>
						<a href="http://www.berman.co.il/"><img src="ad-h2.jpg" /></a>
						<a href="http://www.mizrahi-tefahot.co.il"><img src="ad-h3.jpg" /></a>
					</td>
					<td id="sidebar" rowspan=2 style="width:200px;text-align:center;vertical-align:top">
						<h2>שלום <%=user%></h2><br />
						<img src="logo.png" style="width:220px;height:148px" /><br />
						<!--<div style="width:220px;height:450px;background-color:#f00;">פרסומת</div>-->
						<a href="http://www.super-pharm.co.il/heb/HomePage/"><img src="ad-v.gif" /></a>
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
						<input type="button" id="btnAbout" style="width:150px" value="אודות" onClick="loadIt('about')" />
						<br /><br />
						סה"כ יתרת הוצאות החודש: <%=entUser.getProperty("total_expenses")!=null ? entUser.getProperty("total_expenses") : 0%><br />
						יתרה חודשית: <%=entUser.getProperty("total_income")!=null && entUser.getProperty("total_expenses")!=null ?
										(
											(Long)entUser.getProperty("total_income")-(Long)entUser.getProperty("total_expenses")>0?
											(Long)entUser.getProperty("total_income")-(Long)entUser.getProperty("total_expenses"):
											0
										):
										0%><br />
						<br />
						ממוצע הכנסות חודשיות: <%=entUser.getProperty("total_income")!=null ? entUser.getProperty("total_income") : 0%><br />
						ממוצע הוצאות חודשיות: <%=entUser.getProperty("total_expenses")!=null ? entUser.getProperty("avg_expenses") : 0%><br />
					</td>
					<td id="content" background-image: url(content.jpg)><iframe id="ifrmContent" style="height:100%;width:100%" ></iframe></td>
				</tr>
			</table>
		</div>
		
		<script>
			function loadIt(page){
				document.getElementById("ifrmContent").src=page+".jsp?user=<%=user%>";
			}
		</script>
	</body>
</html>