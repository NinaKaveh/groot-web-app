package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;

public class Score {

    public static Map<String, Integer> PODIUM = new LinkedHashMap<>();
    public final static int COEF_ARTICLE = 5;
    public final static int COEF_EVENT = 10;

    public static void addPoints(Users user) {
        try {
            int scoreCount = 0;
            java.sql.Connection connection = ConnectJDBC.connectDB();

            // get the total number of articles for a user given
            PreparedStatement prepStatArticle = connection.prepareStatement("SELECT count(id) FROM articles WHERE authorId=? AND isPublished=1");
            prepStatArticle.setInt(1, user.getId());

            // set the user score
            ResultSet resultSet = prepStatArticle.executeQuery();
            while (resultSet.next()) {
                scoreCount = COEF_ARTICLE * resultSet.getInt(1);
            }

            // get the total number of events for a user given
            PreparedStatement prepStatEvent = connection.prepareStatement("SELECT count(id) FROM events WHERE authorId=? AND isPublished=1");
            prepStatEvent.setInt(1, user.getId());

            // set the user score
            resultSet = prepStatEvent.executeQuery();
            while (resultSet.next()) {
                scoreCount += COEF_EVENT * resultSet.getInt(1);
            }
            user.setScore(scoreCount);

            PreparedStatement prepStatScore = connection.prepareStatement("UPDATE `users` SET `score`=? WHERE `id`=?");
            prepStatScore.setInt(1, user.getScore());
            prepStatScore.setInt(2, user.getId());
            prepStatScore.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void createPodium() {
        try {
            java.sql.Connection connection = ConnectJDBC.connectDB();

            // get the users scores in descending order
            PreparedStatement prepStat = connection.prepareStatement("SELECT pseudo,score FROM users WHERE adminStatus=0 ORDER BY `users`.`score` DESC");
            ResultSet resultSet = prepStat.executeQuery();
            while (resultSet.next() && PODIUM.size()<10) {
                String pseudo = resultSet.getString(1);
                int score = resultSet.getInt(2);
                PODIUM.put(pseudo, score);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Users getUserScore(String userPseudo){
        Users searchUser = new Users();
        try {
            java.sql.Connection connection = ConnectJDBC.connectDB();

            PreparedStatement prepStat = connection.prepareStatement("SELECT * FROM users WHERE pseudo=?");
            prepStat.setString(1,userPseudo);

            ResultSet resultSet = prepStat.executeQuery();
            while (resultSet.next()){
                searchUser.setPseudo(resultSet.getString(2));
                searchUser.setScore(resultSet.getInt(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return searchUser;
    }


}
