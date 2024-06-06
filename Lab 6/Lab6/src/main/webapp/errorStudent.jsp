<%-- 
    Document   : errorStudent
    Created on : 16 May 2024, 1:27:26 am
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 3</title>
    </head>
    <body>
        <h1>Lab 6 : Task 3 - Perform creating and retrieving records via JSP page</h1>
        
        <form id="errorForm" action="insertStudent.jsp" method="post">
            <p>There is error occurred when inserting record...!</p>
            <p><jsp:expression> exception.getMessage() </jsp:expression></p>
            <button type="submit">Back</button>
        </form>
    </body>
</html>