<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoClient"%>
<%@page import="com.java.mongodb.MongoDbUtil"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User</h1>
<a href="add.jsp">Add users</a>
<table border="1">
<tr>
<th>Name</th>
<th>Email</th>
<th>Actions</th>
</tr>
<%

MongoDatabase database=MongoDbUtil.getDatabase("testdb");
MongoCollection<Document> collection=database.getCollection("users");
for(Document doc: collection.find())
{
	String id=doc.getObjectId("_id").toString();
	String name=doc.getString("name");
	String email=doc.getString("email");

%>
<tr>
<td><%= name %></td>
<td><%= email %></td>
<td>
<a href="edit.jsp?id=<%= id %>">Edit</a>
<a href="delete.jsp?id=<%= id %>">Delete</a>
</td>
</tr>
<%
}%>













</table>
</body>
</html>