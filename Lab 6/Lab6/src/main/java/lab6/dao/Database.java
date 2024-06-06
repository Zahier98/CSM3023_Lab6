/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Zahier
 */
public class Database {
    
    private static Connection connection = null;
    private static String url = "jdbc:mysql://localhost/lab6_task1";
    private static String username = "root";
    private static String password = "admin";
    private int result = 0;
    
    public static Connection getConnection() throws ClassNotFoundException {
        if (connection == null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(url, username, password);
                return connection;
            }
            catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return connection;
    }
    
    public void closeConnection() throws ClassNotFoundException {
        try {
            connection.close();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }   
}