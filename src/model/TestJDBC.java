package model;

import java.sql.*;

public class TestJDBC {

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String userName = "root";
            String password = "";
            String url = "jdbc:mysql://localhost:3306/groot?useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            java.sql.Connection connection = DriverManager.getConnection(url, userName, password);
            System.out.println("Connection is successful");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
