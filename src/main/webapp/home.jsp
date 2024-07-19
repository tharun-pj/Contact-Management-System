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
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
    }

    h1 {
        text-align: center;
        color: #333;
        margin-top: 20px;
    }

    button {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        text-decoration: none;
        display: inline-block;
        margin: 10px;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #45a049;
    }

    /* Anchor tag styling for buttons */
    a {
        text-decoration: none;
        color: inherit;
    }

    /* Navbar styling */
    .navbar {
        background-color: #333;
        overflow: hidden;
        margin-bottom: 20px; /* Adjust spacing as needed */
    }

    .navbar a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }
</style>
</head>
<body>
<% 
	User user = (User)session.getAttribute("user"); 
	
	String addContact= user!=null?"add_contact.jsp":"login.jsp";
	String manageContact= user!=null?"manage_contact":"login.jsp";
	String manageProfile= user!=null?"manage_profile.jsp":"login.jsp";
%>
<% if(user!=null){ %>
<h1>Welcome Back <%=user.getUsername() %></h1>
<%} %>

	<a href="<%= addContact%>"><button>Add Contact</button></a>
	<a class="mngbt" href="<%= manageContact%>"><button>Manage Contact</button></a>
	<a href="<%= manageProfile%>"><button>Manage Profile</button></a>
</body>
</html>