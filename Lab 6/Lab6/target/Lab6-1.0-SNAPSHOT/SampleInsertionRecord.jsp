<%-- 
    Document   : SampleInsertionRecord
    Created on : 15 May 2024, 11:03:42 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 1</title>
    </head>
    <body>
        <h1>Lab 6 : Task 1 - Sample insertion records into MySQL through JSP's Page</h1>
        
        <%
            int result;
            
            // Step 1: Load JDBC Driver
            Class.forName("com.mysql.jdbc.Driver");
            out.println("Step 1: MySQL Driver loaded...!");
        %>
        <br>
        <%
            // Step 2: Establish the connection
            String myURL = "jdbc:mysql://localhost/lab6_task1";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            out.println("Step 2: Database is connected...!");
        %>
        <br>
        <%
            // Step 3: Create a PreparedStatement object
            out.println("Step 3: PreparedStatement created...!");
            String sInsertQry = "INSERT INTO firsttable VALUES (?)";
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
        %>
        <br>
        <%
            // Step 4: Assign each value to respective columns for first_table
            out.println("Step 4: Perform insertion of record...!");
            String name = "Welcome to access MySQL database with JSP.";
            myPS.setString(1, name);
            
            result = myPS.executeUpdate();
            
            if (result > 0) {
        %>
        <br>
        <%
                out.println("Step 5: Close database connection...!");
                out.println(" ");
                out.println("Database connection is closed...!");
                
                out.print("<p>" + "The record : (" + name + ") is succesfully created...!</p>");
            }
            // Step 5: Close database connection
            myConnection.close();
        %>

        <footer>
            &copy;2024 - Muhammad Zahier Bin Razmi
        </footer>
    </body>
</html>