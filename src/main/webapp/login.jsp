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
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 400px;
        margin: 50px auto;
        background: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        color: #333;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    input[type="email"],
    input[type="password"],
    input[type="submit"] {
        margin-bottom: 10px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-size: 16px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    .error-message {
        color: red;
        text-align: center;
        margin-top: 10px;
    }
</style>
</head>
<body>
<% String error=(String)request.getAttribute("error"); %>
<h1>Login</h1>
<form action="login" method="post">
<input type="email" name="email" placeholder="Enter your email">
<input type="password" name="password" placeholder="Enter your password">
<input type="submit">
</form>
<% if(error!=null){ %>
<h1><%= error %></h1>
<%} %>
</body>
</html>