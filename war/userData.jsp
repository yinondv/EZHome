<%@ page contentType="text/html;charset=UTF-8" language="java" 
%><%@ page import="java.util.List"
%><%@ page import="com.google.appengine.api.datastore.*"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%><%
if(request.getParameter("username")!=null){
	//TODO: validate input values
	String user =request.getParameter("username" );
	String pname  =request.getParameter("pname"  );
	String fname  =request.getParameter("fname"  );
	String salary  =request.getParameter("salary"  );
	String housing  =request.getParameter("housing"  );
	String traffic  =request.getParameter("traffic"  );
	String clothing  =request.getParameter("clothing"  );
	String houskeep  =request.getParameter("houskeep"  );
	String dest1  =request.getParameter("dest1"  );
	String dest2  =request.getParameter("dest2"  );
	String dest3  =request.getParameter("dest3"  );
	String dest4  =request.getParameter("dest4"  );
	
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
%><html dir="rtl">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=iso-8859-8-i">
	</head>
	<body>
		<h1 align="center">Signing to EZHome</h1>
		<div align="center">
			<img width=220 height=148 src="logo.png" />
		</div>
		<form method="post" action="userData.jsp">
			<input type="hidden" name="username" value="<%=request.getParameter("user")%>" />
			<div align="center">
				<h2>Personal Details</h2>
			</div>
			<br />
			<div align="center">
				<input type="text" name="pname" /> <label> personal name<b>*</b>
				</label>
			</div>
			<br />
	
			<div align="center">
				<input type="text" name="fname" /> <label> last name<b>*</b>
				</label>
			</div>
			<br />
			<div align="center">
				<input type="text" name="salary" /> salary<b>*</b> 
			</div>
			<br /> <br />
	
			<div align="center">
				<h2>
					Monthly Outcomes <b></b>
				</h2>
				<input type="text" name="housing" /> <label> housing<b>*</b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="traffic" /> <label> traffic<b>*</b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="clothing" /> <label> clothing<b>*</b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="houskeep" /> <label> house keeping<b>*</b>
				</label> <br /> <br />
			</div>
	
	
			<div align="center">
				<h2>
					Monthly Destinations
				</h2>
				<input type="text" name="dest1" /> <label> destination 1 <b>*</b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="dest2" /> <label> destination 2 <b>*</b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="dest3" /> <label> destination 3 <b>*</b>
				</label> <br /> <br />
			</div>
			<div align="center">
				<input type="text" name="dest4" /> <label> destination 4 <b>*</b>
				</label> <br /> <br />
			</div>
	
			<div align="center">
				<input type="Submit">
					<br /> <br />
			</div>
		</form>
	</body>
</html><%}%>