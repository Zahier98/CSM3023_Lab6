<%-- 
    Document   : doLogin
    Created on : 15 May 2024, 2:47:43 am
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="com.model.lab6.User" %>
<%@page import="lab6.dao.Database" %>
<%@page import="lab6.dao.UserDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Exercise</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            out.print("<p>" + username + "</p>");
            out.print("<p>" + password + "</p>");

            Database database = new Database();
            
            UserDAO userDAO = new UserDAO();
            
            User user = userDAO.getUser(username, password);

            database.closeConnection();

            if (user != null) {
                // Login successful, update session and redirect to main.jsp
                session.setAttribute("user", user);
                response.sendRedirect("main.jsp");
            } 
            else {
                // Login failed, redirect to login.jsp with error message
                session.setAttribute("errorMessage", "Invalid username or password!");
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>