<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Login Procedure</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String save = request.getParameter("save");
	
	if(save != null) {  // if checkbox is checked
		// Cookie class create
		Cookie cookie = new Cookie("id", id);  // Cookie(String key, String value)
		cookie.setMaxAge(60*10);  // set the max time(sec)
		
		response.addCookie(cookie); // send cookie value to client(user)
		
		out.write("Complete the creation of cookie!");
		
	}
	
%>

</body>
</html>