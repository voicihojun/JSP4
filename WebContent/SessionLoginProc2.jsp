<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login Procedure 2</title>
</head>
<body>
<%
	String id = (String) session.getAttribute("id");
	String pwd = (String) session.getAttribute("pwd");
	


%>
	<h2>
		your id is <%=id %> <br />
		your pwd is <%=pwd %> <br />
	
	</h2>

</body>
</html>