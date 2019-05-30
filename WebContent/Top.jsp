<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Top</title>
</head>
<body>
<%	
	String logout = request.getParameter("logout");
	if(logout != null) {
		session.setAttribute("id", null);
		session.setMaxInactiveInterval(0);
	}
	String id = (String) session.getAttribute("id");
	String pwd = (String) session.getAttribute("pwd");
	
	if(id == null) {
		id = "Guest";
	}
%>

	<!-- top page -->
	<table border="1" style="width: 1200px;">
		<tr>
			<td><img src="img/campLogo.jpg" alt="logo" style="width: 200px;"/></td>
			<td colspan="6">Camping Boutique</td>
		</tr>
		<tr>
			<td>Tent</td>
			<td>Chair</td>
			<td>TableWare</td>
			<td>Sleeping Bag</td>
			<td>Table</td>
			<td>Far Rods</td>
			<td>Hi! 
		<%
			if(id == "Guest") {
		
		%>	
			<%=id +"," %> <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">log in</button>
		<% } else { %>
			<%=id +"," %> <button onclick="location.href='SessionMain.jsp?logout=1'">log out</button>
		<%} %>
			</td>
		</tr>
	</table>

</body>
</html>