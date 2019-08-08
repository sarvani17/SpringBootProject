<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor = "#33ff99"><br>
<a href = "../home.jsp" >Home Page</a>

	<h1>Employees</h1>
	<table border = "2">
		<thead>
			<th>Id</th>
			<th>Name</th>
			<th>Location</th>
			<th>Role</th>
			<th>Salary</th>
		</thead>
		<tbody>
			<c:forEach var="employees" items="${EMPLOYEELIST}">
				<tr>
					<td>${employees.id}</td>
					<td>${employees.name}</td>
					<td>${employees.location}</td>
					<td>${employees.role}</td>
					<td>${employees.salary}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>