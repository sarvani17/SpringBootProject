<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete</title>
</head>
<body bgcolor = "#33ff99"><br>
<a href = "../home.jsp" >Home Page</a>

	<form action="employee/deleteEmployee">
		<h3>Delete Operation</h3>
		Employee id: <input type="number" name="id"> 
		<input type="submit" value="delete">
	</form>
</body>
</html>