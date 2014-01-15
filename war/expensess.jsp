<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ page import="javax.servlet.http.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
String user=request.getParameter("user");
Entity entUser = datastore.get(KeyFactory.createKey("User",request.getParameter("user")));
if(request.getParameter("housing_0")!=null){
	entUser.setProperty("housing_0",request.getParameter("housing_0"));
	entUser.setProperty("housing_1",request.getParameter("housing_1"));
	entUser.setProperty("housing_2",request.getParameter("housing_2"));
	entUser.setProperty("savings_0",request.getParameter("savings_0"));
	entUser.setProperty("transportation_0",request.getParameter("transportation_0"));
	entUser.setProperty("transportation_1",request.getParameter("transportation_1"));
	entUser.setProperty("transportation_2",request.getParameter("transportation_2"));
	entUser.setProperty("transportation_3",request.getParameter("transportation_3"));
	entUser.setProperty("utilities_0",request.getParameter("utilities_0"));
	entUser.setProperty("utilities_1",request.getParameter("utilities_1"));
	entUser.setProperty("utilities_2",request.getParameter("utilities_2"));
	entUser.setProperty("utilities_3",request.getParameter("utilities_3"));
	entUser.setProperty("utilities_4",request.getParameter("utilities_4"));
	entUser.setProperty("utilities_5",request.getParameter("utilities_5"));
	entUser.setProperty("utilities_6",request.getParameter("utilities_6"));
	entUser.setProperty("shopping_0",request.getParameter("shopping_0"));
	entUser.setProperty("shopping_1",request.getParameter("shopping_1"));
	entUser.setProperty("shopping_2",request.getParameter("shopping_2"));
	entUser.setProperty("kids_0",request.getParameter("kids_0"));
	entUser.setProperty("kids_1",request.getParameter("kids_1"));
	entUser.setProperty("kids_2",request.getParameter("kids_2"));
	entUser.setProperty("kids_3",request.getParameter("kids_3"));
	entUser.setProperty("kids_4",request.getParameter("kids_4"));
	entUser.setProperty("kids_5",request.getParameter("kids_5"));
	entUser.setProperty("education_0",request.getParameter("education_0"));
	entUser.setProperty("education_1",request.getParameter("education_1"));
	entUser.setProperty("leisure_0",request.getParameter("leisure_0"));
	entUser.setProperty("leisure_1",request.getParameter("leisure_1"));
	entUser.setProperty("leisure_2",request.getParameter("leisure_2"));
	entUser.setProperty("leisure_3",request.getParameter("leisure_3"));
	entUser.setProperty("leisure_4",request.getParameter("leisure_4"));
	entUser.setProperty("cosmetics_0",request.getParameter("cosmetics_0"));
	entUser.setProperty("cosmetics_1",request.getParameter("cosmetics_1"));
	entUser.setProperty("cosmetics_2",request.getParameter("cosmetics_2"));
	entUser.setProperty("misc_0",request.getParameter("misc_0"));
	datastore.put(entUser);
}
%><html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body dir=rtl style="height:100%">
		<form method="post">
			<h1 align="center">הוצאות חודשיות EZHome</h1>
			<table>
				<tr>
					<td>תחום</td>
					<td>סעיף</td>
					<td>סך הוצאה חודשית</td>
					<td>מידע נוסף</td>
				</tr>
				<tr>
					<td rowspan='3'>דיור</td>
					<td>משכנתא/שכר דירה</td>
					<td><input
						type=text
						id="housing_0"
						name="housing_0"
						value=<%=entUser.getProperty("housing_0")!=null ? entUser.getProperty("housing_0") : 0%>></input></td>
					<td>עלות שכר הדירה / משכנתא החודשית</td>
				</tr>
				<tr>
					<td>תחזוקת דירה</td>
					<td><input
						type=text
						id="housing_1"
						name="housing_1"
						value=<%=entUser.getProperty("housing_1")!=null ? entUser.getProperty("housing_1") : 0%>></input></td>
					<td>עלות תיקונים חודשיים בבית</td>
				</tr>
				<tr>
					<td>ועד בית</td>
					<td><input
						type=text
						id="housing_2"
						name="housing_2"
						value=<%=entUser.getProperty("housing_2")!=null ? entUser.getProperty("housing_2") : 0%>></input></td>
					<td>תשלום חודשי לועד הבית</td>
				</tr>
				<tr>
					<td rowspan='1'>חסכונות</td>
					<td>חסכון חודשי</td>
					<td><input
						type=text
						id="savings_0"
						name="savings_0"
						value=<%=entUser.getProperty("savings_0")!=null ? entUser.getProperty("savings_0") : 0%>></input></td>
					<td>הפקדה חודשית לתכנית חסכון</td>
				</tr>
		
				<tr>
					<td>&nbsp;</td>
				</tr>
		
				<tr>
					<td rowspan='4'>אחזקת רכב / נסיעות</td>
					<td>דלק</td>
					<td><input
						type=text
						id="transportation_0"
						name="transportation_0"
						value=<%=entUser.getProperty("transportation_0")!=null ? entUser.getProperty("transportation_0") : 0%>></input></td>
					<td>עלות חודשית של דלק</td>
				</tr>
				<tr>
					<td>טיפולים</td>
					<td><input
						type=text
						id="transportation_1"
						name="transportation_1"
						value=<%=entUser.getProperty("transportation_1")!=null ? entUser.getProperty("transportation_1") : 0%>></input></td>
					<td>עלות ממוצעת של טיפולים ברכב מדי חודש</td>
				</tr>
				<tr>
					<td>טסט ואגרת רישוי</td>
					<td><input
						type=text
						id="transportation_2"
						name="transportation_2"
						value=<%=entUser.getProperty("transportation_2")!=null ? entUser.getProperty("transportation_2") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>תחבורה ציבורית</td>
					<td><input
						type=text
						id="transportation_3"
						name="transportation_3"
						value=<%=entUser.getProperty("transportation_3")!=null ? entUser.getProperty("transportation_3") : 0%>></input></td>
					<td>רכבות ואוטובוסים</td>
				</tr>
		
				<tr>
					<td>&nbsp;</td>
		
				<tr>
					<td rowspan='7'>חשבונות חודשיים</td>
					<td>חשמל</td>
					<td><input
						type=text
						id="utilities_0"
						name="utilities_0"
						value=<%=entUser.getProperty("utilities_0")!=null ? entUser.getProperty("utilities_0") : 0%>></input></td>
					<td>יש לשים לב, כי התשלום הינו דו חודשי.</td>
				</tr>
				<tr>
					<td>חשבון גז</td>
					<td><input
						type=text
						id="utilities_1"
						name="utilities_1"
						value=<%=entUser.getProperty("utilities_1")!=null ? entUser.getProperty("utilities_1") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>ארנונה ומים</td>
					<td><input
						type=text
						id="utilities_2"
						name="utilities_2"
						value=<%=entUser.getProperty("utilities_2")!=null ? entUser.getProperty("utilities_2") : 0%>></input></td>
					<td>יש לשים לב, כי התשלום הינו דו חודשי.</td>
				</tr>
				<tr>
					<td>טלפון קווי</td>
					<td><input
						type=text
						id="utilities_3"
						name="utilities_3"
						value=<%=entUser.getProperty("utilities_3")!=null ? entUser.getProperty("utilities_3") : 0%>></input></td>
					<td>יש לשים לב, כי התשלום הינו דו חודשי.</td>
				</tr>
				<tr>
					<td>סלולרים</td>
					<td><input
						type=text
						id="utilities_4"
						name="utilities_4"
						value=<%=entUser.getProperty("utilities_4")!=null ? entUser.getProperty("utilities_4") : 0%>></input></td>
					<td>סך התשלומים לחברות הסלולריות</td>
				</tr>
				<tr>
					<td>טלויזיה בכבלים</td>
					<td><input
						type=text
						id="utilities_5"
						name="utilities_5"
						value=<%=entUser.getProperty("utilities_5")!=null ? entUser.getProperty("utilities_5") : 0%>></input></td>
					<td>תשלום ל-YES או HOT</td>
				</tr>
				<tr>
					<td>אינטרנט</td>
					<td><input
						type=text
						id="utilities_6"
						name="utilities_6"
						value=<%=entUser.getProperty("utilities_6")!=null ? entUser.getProperty("utilities_6") : 0%>></input></td>
					<td>תשלום לספק האינטרנט</td>
				</tr>
		
				<tr>
					<td>&nbsp;</td>
				</tr>
		
		
				<tr>
					<td rowspan='3'>קניות</td>
					<td>מזון</td>
					<td><input
						type=text
						id="shopping_0"
						name="shopping_0"
						value=<%=entUser.getProperty("shopping_0")!=null ? entUser.getProperty("shopping_0") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>ביגוד והנעלה</td>
					<td><input
						type=text
						id="shopping_1"
						name="shopping_1"
						value=<%=entUser.getProperty("shopping_1")!=null ? entUser.getProperty("shopping_1") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>קניות נוספות</td>
					<td><input
						type=text
						id="shopping_2"
						name="shopping_2"
						value=<%=entUser.getProperty("shopping_2")!=null ? entUser.getProperty("shopping_2") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
		
				<tr>
					<td>&nbsp;</td>
				</tr>
		
				<tr>
					<td rowspan='6'>ילדים</td>
					<td>חוגים</td>
					<td><input
						type=text
						id="kids_0"
						name="kids_0"
						value=<%=entUser.getProperty("kids_0")!=null ? entUser.getProperty("kids_0") : 0%>></input></td>
					<td>כולל חוגים לילדים, צופים...</td>
				</tr>
				<tr>
					<td>חינוך</td>
					<td><input
						type=text
						id="kids_1"
						name="kids_1"
						value=<%=entUser.getProperty("kids_1")!=null ? entUser.getProperty("kids_1") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>צעצועים ומשחקים</td>
					<td><input
						type=text
						id="kids_2"
						name="kids_2"
						value=<%=entUser.getProperty("kids_2")!=null ? entUser.getProperty("kids_2") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>גן פרטי</td>
					<td><input
						type=text
						id="kids_3"
						name="kids_3"
						value=<%=entUser.getProperty("kids_3")!=null ? entUser.getProperty("kids_3") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>מטפלת</td>
					<td><input
						type=text
						id="kids_4"
						name="kids_4"
						value=<%=entUser.getProperty("kids_4")!=null ? entUser.getProperty("kids_4") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>בייבי-סיטר</td>
					<td><input
						type=text
						id="kids_5"
						name="kids_5"
						value=<%=entUser.getProperty("kids_5")!=null ? entUser.getProperty("kids_5") : 0%>></input></td>
	
					<td>&nbsp;</td>
				</tr>
		
				<tr>
					<td>&nbsp;</td>
				</tr>
		
		
				<tr>
					<td rowspan='2'>לימודים</td>
					<td>שכר לימוד</td>
					<td><input
						type=text
						id="education_0"
						name="education_0"
						value=<%=entUser.getProperty("education_0")!=null ? entUser.getProperty("education_0") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>קורסים / השתלמויות</td>
					<td><input
						type=text
						id="education_1"
						name="education_1"
						value=<%=entUser.getProperty("education_1")!=null ? entUser.getProperty("education_1") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
		
				<tr>
					<td>&nbsp;</td>
				</tr>
		
				<tr>
					<td rowspan='5'>פנאי
						ובילויים</td>
					<td>מסעדות</td>
					<td><input
						type=text
						id="leisure_0"
						name="leisure_0"
						value=<%=entUser.getProperty("leisure_0")!=null ? entUser.getProperty("leisure_0") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>סרטים והצגות</td>
					<td><input
						type=text
						id="leisure_1"
						name="leisure_1"
						value=<%=entUser.getProperty("leisure_1")!=null ? entUser.getProperty("leisure_1") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>חופשות</td>
					<td><input
						type=text
						id="leisure_2"
						name="leisure_2"
						value=<%=entUser.getProperty("leisure_2")!=null ? entUser.getProperty("leisure_2") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>חוגים</td>
					<td><input
						type=text
						id="leisure_3"
						name="leisure_3"
						value=<%=entUser.getProperty("leisure_3")!=null ? entUser.getProperty("leisure_3") : 0%>></input></td>
					<td>חדר כושר, עיסוי, שיאצו...</td>
				</tr>
				<tr>
					<td>מתנות לארועים</td>
					<td><input
						type=text
						id="leisure_4"
						name="leisure_4"
						value=<%=entUser.getProperty("leisure_4")!=null ? entUser.getProperty("leisure_4") : 0%>></input></td>
					<td>חתונות, בריתות, בר מצוות...</td>
				</tr>
		
				<tr>
					<td>&nbsp;</td>
				</tr>
		
				<tr>
					<td rowspan='3'>טיפוח אישי</td>
					<td>מוצרי טיפוח אישי</td>
					<td><input
						type=text
						id="cosmetics_0"
						name="cosmetics_0"
						value=<%=entUser.getProperty("cosmetics_0")!=null ? entUser.getProperty("cosmetics_0") : 0%>></input></td>
					<td>קרמים, איפור, בשמים, שמפו...</td>
				</tr>
				<tr>
					<td>תסרוקות ותספורות</td>
					<td><input
						type=text
						id="cosmetics_1"
						name="cosmetics_1"
						value=<%=entUser.getProperty("cosmetics_1")!=null ? entUser.getProperty("cosmetics_1") : 0%>></input></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>קוסמטיקאית</td>
					<td><input
						type=text
						id="cosmetics_2"
						name="cosmetics_2"
						value=<%=entUser.getProperty("cosmetics_2")!=null ? entUser.getProperty("cosmetics_2") : 0%>></input></td>
					<td>פדיקור / מניקור / הסרת שיער...</td>
				</tr>
		
				<tr>
					<td>&nbsp;</td>
				</tr>
		
				<tr>
					<td rowspan='1'>שונות</td>
					<td>שונות</td>
					<td><input
						type=text
						id="misc_0"
						name="misc_0"
						value=<%=entUser.getProperty("misc_0")!=null ? entUser.getProperty("misc_0") : 0%>></input></td>
					<td>כל ההוצאות שאינן נכנסות לקטגוריה אחרת</td>
				</tr>
				<tr>
					<td>סה"כ</td>
					<td>&nbsp;</td>
					<td><input type='text' id='total'></input></td>
					<td>&nbsp;</td>
				</tr>
			</table>
			<input type="submit" value="שלח" onclick="send" />
		</form>
	</body>
</html>