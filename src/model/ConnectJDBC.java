package model;

import java.sql.*;

public class ConnectJDBC {

/*
    public static void main(String[] args) {
        connectDB();
    }
 */

    public static Connection connectDB() {

        java.sql.Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("DRIVER OK ! ");
            String userName = "root";
            String password = "root";
            String url = "jdbc:mysql://localhost:3306/groot?useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            connection = DriverManager.getConnection(url, userName, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}