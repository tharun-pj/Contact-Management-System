<%@page import="com.example.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%--   <%@ include file="StyleSheets/style.css" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
    }

    .nav {
        background-color: #333;
        color: #fff;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 20px;
    }

    .nav h1 {
        margin: 0;
        font-size: 24px;
        color: hotpink;
    }

    .side {
        display: flex;
        align-items: center;
    }

    .side a {
        text-decoration: none;
        margin-left: 10px;
    }

    .side button {
        padding: 8px 16px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 3px;
        transition: background-color 0.3s;
    }

    .side button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<% User user2 =(User)session.getAttribute("user"); %>
	<nav class="nav">
	<div><h1>Contact Management System</h1></div>
	<div class="side">
	<%if(user2==null){ %>
	<a href="register.jsp"><button>Register</button></a>
	<a href="login.jsp"><button>Login</button></a>
	<%}else{ %>
	<a href="logout"><button>Logout</button></a>
	<%} %>
	</div>
	</nav>
</body>
</html>