package model;

import java.sql.*;

public class Article {
    private int id;
    private String date;
    private String title;
    private String content;
    private int authorId;
    private int adminApproverId;

    public int getId() {
        return id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public int getAdminApproverId() {
        return adminApproverId;
    }

    public void setAdminApproverId(int adminApproverId) {
        this.adminApproverId = adminApproverId;
    }

    public void addArticle() {
        try {
            // Establish connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/groot?useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            Connection connection = DriverManager.getConnection(url, "root", "root");

            // Use of prepared statement to avoid security breach
            PreparedStatement prepStat = connection.prepareStatement("INSERT INTO articles VALUES (NULL,?,?,?,?,0)");
            prepStat.setString(1, getDate());
            prepStat.setString(2, getTitle());
            prepStat.setString(3, getContent());
            prepStat.setInt(4, getAuthorId());
            System.out.println(this);
            prepStat.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

/*
    public void getArticle(String email, String password) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/groot?useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            Connection connection = DriverManager.getConnection(url, "root", "");

            PreparedStatement prepStat = connection.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
            prepStat.setString(1, email);
            prepStat.setString(2, password);

            ResultSet resultSet = prepStat.executeQuery();
            while (resultSet.next()) {
                setId(resultSet.getInt(1));                     // 1st column in table
                setPseudo(resultSet.getString(2));              // 2th column in table
                setPassword(resultSet.getString(3));            // 3th column in table
                setEmail(resultSet.getString(4));               // 4th column in table
                setEmail(resultSet.getString(5));               // 5th column in table
                setAdminStatus(resultSet.getInt(7));            // 7th column in table
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
*/

    @Override
    public String toString() {
        return "Articles{" +
                "id=" + id +
                ", date='" + date + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", author=" + authorId +
                ", admin approval='" + 0 + '\'' +
                '}';
    }
}
