<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login Procedure 1</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	session.setAttribute("id", id);
	session.setAttribute("pwd", pwd);
	
	session.setMaxInactiveInterval(60*10);

	response.sendRedirect("SessionMain.jsp");
%>
	
	

</body>
</html>