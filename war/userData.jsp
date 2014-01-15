<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%
if(request.getParameter("username")!=null){
	//TODO: validate input values
	String user    =request.getParameter("username");
	String pname   =request.getParameter("pname"   );
	String fname   =request.getParameter("fname"   );
	String salary  =request.getParameter("salary"  );
	String housing =request.getParameter("housing" );
	String traffic =request.getParameter("traffic" );
	String clothing=request.getParameter("clothing");
	String houskeep=request.getParameter("houskeep");
	String dest1   =request.getParameter("dest1"   );
	String dest2   =request.getParameter("dest2"   );
	String dest3   =request.getParameter("dest3"   );
	String dest4   =request.getParameter("dest4"   );
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	Entity entUser = datastore.get(KeyFactory.createKey("User",user));
	
	entUser.setProperty("pname",pname);
	entUser.setProperty("fname",fname);
	entUser.setProperty("salary",salary);
	entUser.setProperty("housing",housing);
	entUser.setProperty("traffic",traffic);
	entUser.setProperty("clothing",clothing);
	entUser.setProperty("houskeep",houskeep);
	entUser.setProperty("dest1",dest1);
	entUser.setProperty("dest2",dest2);
	entUser.setProperty("dest3",dest3);
	entUser.setProperty("dest4",dest4);
	datastore.put(entUser);
	response.sendRedirect("/index.jsp?user="+user+"&password="+entUser.getProperty("password"));
}else if(request.getParameter("user")==null){
	response.sendRedirect("/signup.jsp");
}else{
%><html lang='he'>
	<head>
	
			<meta charset='utf-8'/>
		<meta http-equiv="content-type" content="text/html;charset=iso-8859-8-i">
	</head>
	<body dir=rtl>
	<form method="post" action="userData.jsp">
	<h1 align="center">הרשמה ל EZHome</h1>
	<tr>
	<td>
	<p align="center">
	EZHome הינה מערכת מתקדמת לניהות תקציב המשפחה. באתר ניתן לנהל ולעקוב אחר התקציב המשפחתי בצורה פשוטה וקלה יותר.
	</br>
	הכנסות והוצאות דרך כרטיסי אשראי, המחאות, מזומנים, הוראות קבע ועוד. אנו מזמינים אותך להרשם אלינו בחינם וללא כל התחיבות!
	</p>
	</td>
	</tr>
	<table align="center">
	<rt>
	<td>
			<p align="center"><img width=220 height=148 src="logo.png" /></p>
	</td>
	</tr>
	
	
	<rt>
	<td>
			 <input type="hidden" name="username" value="<%=request.getParameter("user")%>" />
	</td>
	</tr>
	
	
	<rt>
	<td>	
			<br/>
			<br/>
			<br/>	
	</tr>
	</td>
	
	<rt>
	<td>
							<h2 align="center">פרטים אישים</h2>
	</td>
	</tr>
	
	
	<rt>
	<td>
							שם פרטי:<input type="text" name="pname"/>
	</td>
	</tr>
	
	<rt>
	<td>
				שם משפחה:<input type="text" name="fname"/>
	</td>
	</tr>
	
	<rt>
	<td>
				 משכורת <input type="text" name="salary"/> 
	</td>
	</tr>

	<rt>
	<td>	
			<br/>
			<br/>
			<br/>	
	</tr>
	</td>
	
	<rt>
	<td>
				<h2 align="center">הוצאות חודשיות</h2>
	</td>
	</tr>
		
	<rt>
	<td>
				דיור:<input type="text" name="housing"/>
	</td>
	</tr>
	
	
	<rt>
	<td>
				נסיעות:<input type="text" name="traffic" /> 
	</td>
	</tr>
	
	<rt>
	<td>
				ביגוד:<input type="text" name="clothing" /> 
	</td>
	</tr>
	
	<rt>
	<td>
				משק בית:<input type="text" name="clothing" /> 
	</td>
	</tr>

	<tr>
	<td>
		יעד 1:
		<select>
			<option value="car">רכב</option>
			<option value="house">דירה</option>
			<option value="electricity">מוצרי חשמל</option>
			<option value="happinesses">אירועים</option>
		</select>
		<label name="cost">עלות
		<input type='text' name='dest1'/>
	</td>
	</tr>
	
	<tr>
	<td>
		יעד 2:
		<select>
			<option value="car">רכב</option>
			<option value="house">דירה</option>
			<option value="electricity">מוצרי חשמל</option>
			<option value="happinesses">אירועים</option>
		</select>
		<label name="cost">עלות
		<input type='text' name='dest2'/>
	</td>
	</tr>

	<tr>
	<td>
			יעד 3:
		<select>
			<option value="car">רכב</option>
			<option value="house">דירה</option>
			<option value="electricity">מוצרי חשמל</option>
			<option value="happinesses">אירועים</option>
		</select>
		<label name="cost">עלות
		<input type='text' name='dest3'/>
	</td>
	</tr>

	<tr>
	<td>
		יעד 4:
		<select>
			<option value="car">רכב</option>
			<option value="house">דירה</option>
			<option value="electricity">מוצרי חשמל</option>
			<option value="happinesses">אירועים</option>
		</select>
		<label name="cost">עלות
		<input type='text' name='dest4'/>
	</td>
	</tr>

	<tr>
	<td>
		יעד 5:
		<select>
			<option value="car">רכב</option>
			<option value="house">דירה</option>
			<option value="electricity">מוצרי חשמל</option>
			<option value="happinesses">אירועים</option>
		</select>	
		עלות
		<input type='text' name='dest5' />
	</td>
	</tr>

	<tr>
	<td>
			<p align="center"><input align="center" type="submit" value="סיימתי!"/></p>
	</td>
	</tr>
	
	</table>
	</form>
	</body>
</html><%}%>



<!--
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
		<h1 align="center">הרשמה ל EZHome</h1>
		<div align="center">
			<img width=220 height=148 src="logo.png" />
		</div>
		<form method="post" action="userData.jsp">
			<input type="hidden" name="username" value="<%=request.getParameter("user")%>" />
			<div align="center">
				<h2>פרטים אישים</h2>
			</div>
			<br />
			<div align="center">
				<input type="text" name="pname" /> <label> שם פרטי:<b></b>
				</label>
			</div>
			<br />
	
			<div align="center">
				<input type="text" name="fname" /> <label> שם משפחה:<b></b>
				</label>
			</div>
			<br />
			<div align="center">
				<input type="text" name="salary" /> משכורת<b></b> 
			</div>
			<br /> <br />
	
			<div align="center">
				<h2>
					הוצאות חודשיות <b></b>
				</h2>
				<input type="text" name="housing" /> <label> דיור<b></b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="traffic" /> <label> נסיעות<b></b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="clothing" /> <label> ביגוד<b></b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="houskeep" /> <label> משק בית<b></b>
				</label> <br /> <br />
			</div>
	
	
			<div align="center">
				<h2>
					יעדים חודשיים
				</h2>
				<input type="text" name="dest1" /> <label> יעד 1 <b></b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="dest2" /> <label> יעד 2<b></b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="dest3" /> <label> יעד 3 <b></b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="dest4" /> <label> יעד 4 <b></b>
				</label> <br /> <br />
			</div>
	--/>