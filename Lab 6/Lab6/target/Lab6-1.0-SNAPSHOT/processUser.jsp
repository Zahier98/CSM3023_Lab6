<%-- 
    Document   : processUser
    Created on : 16 May 2024, 2:40:39 am
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
        <h1>Lab 6 - Exercise</h1>
        
        <jsp:useBean id="user" class="com.model.lab6.User" scope="request">
            <jsp:setProperty name="user" property="*" />
        </jsp:useBean>
        
        <%
            int result;
            
            Database database = new Database();
            UserDAO userDAO = new UserDAO();
            
            result = userDAO.addDetails(user);
            
            if (result > 0) {
        %>
                <p>Record with username <%= user.getUsername() %> successfully created...!</p>
                <p>Details of the record are:</p>
                <p>Username: <%= user.getUsername() %></p>
                <p>First name: <%= user.getFirstname() %> </p>
                <p>Last name: <%= user.getLastname() %> </p>
                <button onclick="redirectToLogin()">Proceed to Log In</button>
        <%
            }
            database.closeConnection();
        %>
        
        <script>
            function redirectToLogin() {
                window.location.href = "login.jsp";
            }
        </script>
    </body>
</html>