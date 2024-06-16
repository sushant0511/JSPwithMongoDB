<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add User</h1>
<form action="AddData" method="post">
<label for="name"> Name:</label>
<input type="text" id="name" name="name" required="required"><br>
<label for="name"> Email:</label>
<input type="email" id="email" name="email" required="required"><br>
<input type="submit" value="Add">
</form>
</body>
</html>