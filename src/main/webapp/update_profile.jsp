<%@page import="com.example.entity.User"%>
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
        color: #007bff; /* Blue color */
    }
    
    form {
        margin-top: 20px;
    }
    
    label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
        color: #28a745; /* Blue color */
    }
    
    input[type=text], input[type=email], input[type=password] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ced4da;
        border-radius: 4px;
        box-sizing: border-box;
    }
    
    input[type=submit] {
        background-color: #28a745; /* Blue color */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    
    input[type=submit]:hover {
        background-color: #28a745; /* Darker shade of blue on hover */
    }
</style>
</head>
<body>
<% User user=(User) session.getAttribute("user"); %>
	<form action="update_profile" method="post">
	<div>
		<label>UserName:</label>
		<input type="text" name="username" value="<%=user.getUsername()%>">
		<label>Email:</label>
		<input type="email" name="email" value="<%=user.getEmail()%>">
		<label>Password:</label>
		<input type="text" name="password" value="<%=user.getPassword()%>">
		<input type="submit" value="Confirm"> 
	</div>
	</form>
</body>
</html>
