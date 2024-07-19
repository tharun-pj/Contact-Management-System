<%@page import="java.util.Iterator"%>
<%@page import="com.example.entity.Contact"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
        background-color: #f0f0f0;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    a {
        text-decoration: none;
        color: #333;
    }

    a:hover {
        text-decoration: underline;
    }

    button {
        margin-top: 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 3px;
        text-decoration: none;
        display: inline-block;
    }

    button a {
        color: white;
        text-decoration: none;
    }

    button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<% List<Contact> list = (List<Contact>) request.getAttribute("list"); 
	Iterator<Contact> l = list.iterator();
%>
<h1>Manage Contacts</h1>
	<table border="4">
		<tr>
		<th>contactId</th>
		<th>contactName</th>
		<th>contactNumber</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
		<% while(l.hasNext()){ 
			Contact contact = l.next();
		%>
		<tr>
 		<td><%=contact.getContactId() %></td> 
		<td><%=contact.getContactName()%></td>
		<td><%=contact.getContactNumber()%></td>
		<td><a href="edit_contact?contactId=<%=contact.getContactId()%>">Edit</a> </td>
		<td><a href="delete_contact?contactId=<%=contact.getContactId()%>">Delete</a> </td>
		</tr>
		<%}%>
	</table>
	<button><a href="home.jsp">Go Back</a></button>
</body>
</html>
