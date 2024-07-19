<%@page import="com.example.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
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
        padding: 20px;
    }

    .container {
        max-width: 600px;
        margin: 20px auto;
        background: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="text"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-size: 16px;
    }

    input[type="text"][readonly] {
        background-color: #f2f2f2;
    }

    button {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 3px;
        transition: background-color 0.3s;
        text-decoration: none;
        display: inline-block;
        margin-top: 10px;
    }

    button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<% 
	User user=(User)session.getAttribute("user"); 
	String name =user.getUsername();
	String mail =user.getEmail();
	String pwd =user.getPassword();
%>
<div>
<label>username:</label>
<input type="text" name="username" value="<%= name %>" readonly="readonly">
<label>email:</label>
<input type="text" name="email" value="<%= mail %>" readonly="readonly">
<label>password:</label>
<input type="text" name="password" value="<%= pwd %>" readonly="readonly">
<a href="update_profile.jsp"><button>Update</button></a>
<a href="delete_profile"><button>Delete Account</button></a>
</div>
</body>
</html>