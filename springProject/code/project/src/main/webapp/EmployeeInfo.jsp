<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
</head>
<body bgcolor = "#33ff99"><br>
<a href = "../home.jsp" >Home Page</a>

	<h3>Employee Info</h3>
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Location</th>
				<th>Role</th>
				<th>Salary</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${Employee.id}</td>
				<td>${Employee.name}</td>
				<td>${Employee.location}</td>
				<td>${Employee.role}</td>
				<td>${Employee.salary}</td>
			</tr>
		</tbody>
	</table>
</body>
</html>