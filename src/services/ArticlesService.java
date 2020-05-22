package services;

import model.Article;
import model.ConnectJDBC;

import java.sql.*;
import java.util.ArrayList;

public class ArticlesService {
    private ArrayList<Article> allArticles = new ArrayList<Article>();
    private static ArticlesService INSTANCE = null;

    private ArticlesService() {
    }


    public static ArticlesService getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new ArticlesService();
        }
        return INSTANCE;
    }

    public void addArticle(Article article) {
        try {
            // Establish connection
            java.sql.Connection connection = ConnectJDBC.connectDB();

            // Use of prepared statement to avoid security breach
            PreparedStatement prepStat = connection.prepareStatement("INSERT INTO articles VALUES (NULL,CURDATE(),?,?,?,0)");
            prepStat.setString(1, article.getTitle());
            prepStat.setString(2, article.getContent());
            prepStat.setInt(3, article.getAuthorId());
            System.out.println(this);
            prepStat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Article> getAll(int limit) {
        allArticles.clear();
        if (this.allArticles.size() == 0) {
            this.fetchAll(limit);
        }
        return this.allArticles;
    }

    public void fetchAll(int limit) {
        try {
            // Establish connection
            Connection connection = ConnectJDBC.connectDB();
            String statement =
                    "SELECT articles.id,articles.date,articles.title,articles.content,articles.authorId,articles.isPublished,users.pseudo " +
                    "FROM articles,users " +
                    "WHERE articles.authorId=users.id " +
                    "AND isPublished=1 " +
                    "ORDER by id DESC";
            if (limit!=-1){
                statement+= " LIMIT "+limit;
            }
            //Recuperation articles
            PreparedStatement prepStat = connection.prepareStatement(statement);
            ResultSet resultSet = prepStat.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();
                article.setId(resultSet.getInt(1));
                article.setDate(resultSet.getDate(2));
                article.setTitle(resultSet.getString(3));
                article.setContent(resultSet.getString(4));
                article.setAuthorId(resultSet.getInt(5));
                article.setPublicationStatus(resultSet.getInt(6));
                article.setAuthorName(resultSet.getString(7));
                allArticles.add(article);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public String toHtmlString() {
        String htmlString = "";
        int articlesCount = allArticles.size();
        for (Article allArticle : allArticles) {
            htmlString += allArticle.toHTMLString();
        }
        return htmlString;
    }

    /*---------------------------- Admin -------------------------------*/

    public ArrayList<Article> AdminGetAll(int limit) {
        allArticles.clear();
        if (this.allArticles.size() == 0) {
            this.AdminfetchAll(limit);
        }
        return this.allArticles;
    }

    public void AdminfetchAll(int limit) {
        try {
            Connection connection = ConnectJDBC.connectDB();
            String statement =
                    "SELECT articles.id,articles.date,articles.title,articles.content,articles.authorId,articles.isPublished,users.pseudo " +
                            "FROM articles,users " +
                            "WHERE articles.authorId=users.id " +
                            "AND isPublished=0 " +
                            "ORDER by id DESC";
            if (limit!=-1){
                statement+= " LIMIT "+limit;
            }

            PreparedStatement prepStat = connection.prepareStatement(statement);
            ResultSet resultSet = prepStat.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();
                article.setId(resultSet.getInt(1));
                article.setDate(resultSet.getDate(2));
                article.setTitle(resultSet.getString(3));
                article.setContent(resultSet.getString(4));
                article.setAuthorId(resultSet.getInt(5));
                article.setPublicationStatus(resultSet.getInt(6));
                article.setAuthorName(resultSet.getString(7));
                allArticles.add(article);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void DeleteArticle(String selectedID){
        try {
            Connection connection = ConnectJDBC.connectDB();
            PreparedStatement prepStat = connection.prepareStatement("DELETE FROM articles WHERE articles.id =?");
            prepStat.setString(1,selectedID);
            prepStat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void ValidateArticle(String selectedID){
        try {
            Connection connection = ConnectJDBC.connectDB();
            PreparedStatement prepStat = connection.prepareStatement("UPDATE articles SET isPublished='1' WHERE articles.id = ?");
            prepStat.setString(1,selectedID);
            prepStat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}

