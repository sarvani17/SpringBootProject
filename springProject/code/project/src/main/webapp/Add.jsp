<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor = "#33ff99">
<br>
<a href = "../home.jsp" >Home Page</a>

<h1>Enter Employee Details</h1>
<form action = "employee/addemployee" method = "post" >

Id:<input type = "number" name = "id"><br><br>
Name:<input type = "text" name = "name" ><br><br>
Location:<input type = "text" name = "location"><br><br>
Role:<input type = "text" name = "role"><br><br>
Salary: <input type = "number" name = "salary"><br><br>

<input type = "submit" value = "submit">

</form>
</body>
</html>