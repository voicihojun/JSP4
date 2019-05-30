<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login Form</title>
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

	<h2>Session Login</h2>
	<form action="SessionLoginProc.jsp" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id"/></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><input type="password" name="pwd"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="login"/></td>
			</tr>
		</table>
	
	</form>

</body>
</html>