<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Main</title>
<style>

	body {
		width: 1220px;
		margin: 20px auto;
	}
	
	#header td {
		width: 200px;
		text-align: center;
	}
	
	#left {
		float: left;
		width: 250px;
		padding: 10px 0px;
	}
	
	#leftCenter {	
		padding: 5px 5px 5px 0px;
	}
	
	img#img {
		width: 900px;
		height: 300px;
		
		padding: 10px;
	}

</style>
</head>
<body>

<%
	String center = request.getParameter("center");
	
	if(center == null) {
		center = "Center.jsp";
	}


%>
	<table border="1">
		<tr id="header">
			<td>
				<jsp:include page="Top.jsp" />
			</td>
		</tr>
		<tr>
			<td id="leftCenter">
				<span id="left"><jsp:include page="Left.jsp" /></span>
				<span id="center"><jsp:include page="<%=center %>" /></span>
			</td>
		</tr>
		<tr>
			<td>
				<jsp:include page="Bottom.jsp" />
			</td>
		</tr>	
	</table>
	
	
</body>
</html>