<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.login.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% Users user = (Users) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

           <h1>Welcome <%= user.getName() %></h1>
           
          <h3>Your Account ID: <%= user.getId() %> </h3>
          
          <h3>Your Email: <%= user.getEmail() %> </h3>
          
           <h3>Your Password: <%= user.getPassword() %></h3>
           
         <button><a href="LogoutServlet">Log Out</a></button>
</body>
</html>