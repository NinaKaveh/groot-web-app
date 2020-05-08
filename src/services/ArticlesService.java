package services;

import model.Article;
import model.ConnectJDBC;

import java.sql.*;
import java.util.ArrayList;

public class ArticlesService {
    private ArrayList<Article> allArticles = new ArrayList<Article>();
    private static ArticlesService INSTANCE = null;

    private ArticlesService()
    {}


    public static ArticlesService getInstance()
    {
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
        }  catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Article> getAll(){
        allArticles.clear();
        if(this.allArticles.size() == 0){
            this.fetchAll();
        }
        return this.allArticles;
    }

    public void fetchAll() {
        try {
            // Establish connection
            Connection connection = ConnectJDBC.connectDB();

            //Recuperation articles
            PreparedStatement prepStat = connection.prepareStatement("SELECT * FROM articles ORDER by id DESC");
            ResultSet resultSet = prepStat.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();
                article.setId(resultSet.getInt(1)); //1st column
                article.setDate(resultSet.getDate(2));              // 2th column in table
                article.setTitle(resultSet.getString(3));            // 3th column in table
                article.setContent(resultSet.getString(4));               // 4th column in table
                article.setAuthorId(resultSet.getInt(5));               // 5th column in table
                article.setAdminApproverId(resultSet.getInt(6));               // 6th column in table
                allArticles.add(article);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /*public String toJSONString() {
        String stringifiedJSON = "[";
        int articlesCount = allArticles.size();
        for(int itr = 0; itr < articlesCount ; ++itr){
            stringifiedJSON += allArticles.get(itr).toJsonString();
            if(itr != articlesCount){
                stringifiedJSON += ",";
            }
        }
        stringifiedJSON += "]";
        return stringifiedJSON;
    }*/

    public String toHtmlString() {
        String htmlString = "";
        int articlesCount = allArticles.size();
        for(int itr = 0; itr < articlesCount ; ++itr){
            htmlString += allArticles.get(itr).toHTMLString();
        }
        return htmlString;
    }
}

