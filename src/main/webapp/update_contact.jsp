<%@page import="com.example.entity.Contact"%>
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
        background-color: #f8f9fa;
        margin: 0;
        padding: 20px;
    }
    
    .container {
        max-width: 600px;
        margin: 0 auto;
        background-color: #ffffff;
        border: 1px solid #e9ecef;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
    }
    
    h1 {
        text-align: center;
        color: #28a745; /* Green color */
    }
    
    form {
        margin-top: 20px;
    }
    
    .form-group {
        margin-bottom: 20px;
    }
    
    label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
        color: #28a745; /* Green color */
    }
    
    input[type=text] {
        width: 100%;
        padding: 10px;
        border: 1px solid #28a745; /* Green color */
        border-radius: 4px;
        box-sizing: border-box;
    }
    
    input[type=submit] {
        background-color: #28a745; /* Green color */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    
    input[type=submit]:hover {
        background-color: #218838; /* Darker shade of green on hover */
    }
</style>
</head>
<body>
<% Contact contact=(Contact) request.getAttribute("record"); %>
<h1>Update Contact</h1>
<form action="update" method="post">
<input type="text" name="contactId" hidden="true" value="<%= contact.getContactId()%>" readonly="readonly">
<input type="text" name="contactName" value="<%= contact.getContactName() %>" placeholder="Enter your name:">
<input type="text" name="contactNumber" value="<%= contact.getContactNumber() %>" placeholder="Enter your number:">
<input type="submit" value="Confirm Update">
</form>
</body>
</html>