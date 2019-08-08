<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet">
<title>update</title>
</head>
<body bgcolor="#33ff99">
	<br>
	<a href="../home.jsp">Home Page</a>

	<form action="save" method="post">
		<table border="1">

			<tbody>
				<tr>
					<td>Id</td>
					<td><input type="number" name="id" value="${Employee.id}"
						readonly="readonly"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" value="${Employee.name}"></td>
				</tr>
				<tr>
					<td>Location</td>
					<td><input type="text" name="location"
						value="${Employee.location}"></td>
				</tr>
				<tr>
					<td>Role</td>
					<td><input type="text" name="role" value="${Employee.role}"></td>
				</tr>
				<tr>
					<td>Salary</td>
					<td><input type="number" name="salary"
						value="${Employee.salary}"></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="update">
	</form>
</body>
</html>