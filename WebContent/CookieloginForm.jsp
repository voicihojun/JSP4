<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Login Form</title>
<style>
	table, td {
		border: 1px solid black;
	}
	
	body {
		text-align: center;
	}
	
	table {
		margin: 0 auto;
	}
	
	td {
		padding: 5px;
	}
	
</style>
</head>
<body>


<%
	// Using request.getCookies(), save all the cookies to cookies array.
	Cookie [] cookies = request.getCookies();
	// empty String id create
	String id = "";
	
	// if there is cookies,
	if(cookies != null) {
		// all cookies need to be searched
		for (int i = 0; i < cookies.length; i++){
			// cookies[i] has a name of 'id'
			if(cookies[i].getName().equals("id")) {
				// save the value to String id
				id = cookies[i].getValue();
				break;
			}
		}
	}
	


%>
	<h2>Cookie Login</h2>
	<form action="CookieLoginProc.jsp" method="post">
		<table>
			<tr>
				<td>ID</td>
				<!-- if cookie founded, the value will appear the cookie id, 
				if not, it will be empty; --> 
				<td><input type="text" name="id" value="<%=id%>"/></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><input type="password" name="pwd"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="checkbox" name="save"/>save the ID</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="login"/></td>
			</tr>
		</table>
	
	</form>

</body>
</html>