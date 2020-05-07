package model;

import java.sql.*;

public class Article {
    private int id;
    private String title;
    private String content;
    private int authorId;
    private int adminApproverId;
    private Date dateart;

    public int getId() {
        return id;
    }

    public Date setDate(Date datearticle){
        this.dateart=datearticle;
        return dateart;
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
            java.sql.Connection connection = ConnectJDBC.connectDB();

            // Use of prepared statement to avoid security breach
            PreparedStatement prepStat = connection.prepareStatement("INSERT INTO articles VALUES (NULL,CURDATE(),?,?,?,0)");
            prepStat.setString(1, getTitle());
            prepStat.setString(2, getContent());
            prepStat.setInt(3, getAuthorId());
            System.out.println(this);
            prepStat.executeUpdate();
        }  catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void getAllArticles() {
        try {
            // Establish connection
            java.sql.Connection connection = ConnectJDBC.connectDB();

            PreparedStatement prepStat = connection.prepareStatement("SELECT * FROM articles ORDER by id DESC");

            ResultSet resultSet = prepStat.executeQuery();
            while (resultSet.next()) {
                setDate(resultSet.getDate(2));              // 2th column in table
                setTitle(resultSet.getString(3));            // 3th column in table
                setContent(resultSet.getString(4));               // 4th column in table
                setAuthorId(resultSet.getInt(5));               // 5th column in table
                setAdminApproverId(resultSet.getInt(6));               // 6th column in table
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String toString() {
        return "Articles{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", author=" + authorId +
                ", admin approval='" + 0 + '\'' +
                '}';
    }
}
