package model;

import java.sql.*;

public class Users {
    private int id;
    private String pseudo;
    private String email;
    private String password;
    private int score;
    private String userStatus;
    private int adminStatus;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }

    public int getAdminStatus() {
        return adminStatus;
    }

    public void setAdminStatus(int adminStatus) {
        this.adminStatus = adminStatus;
    }

    // User registration
    public void addUser(){
        try {
            java.sql.Connection connection = ConnectJDBC.connectDB();

            PreparedStatement prepStat = connection.prepareStatement("INSERT INTO users VALUES (NULL,?,?,?,0,?,0)");
            prepStat.setString(1,getPseudo());
            prepStat.setString(2,getPassword());
            prepStat.setString(3,getEmail());
            prepStat.setString(4,getUserStatus());
            System.out.println(this);
            prepStat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // User connection
    public void getUser(String email, String password){
        try {
            java.sql.Connection connection = ConnectJDBC.connectDB();

            PreparedStatement prepStat = connection.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
            prepStat.setString(1,email);
            prepStat.setString(2,password);

            ResultSet resultSet = prepStat.executeQuery();
            while (resultSet.next()){
                setId(resultSet.getInt(1));                     // 1st column in table
                setPseudo(resultSet.getString(2));              // 2th column in table
                setPassword(resultSet.getString(3));            // 3th column in table
                setEmail(resultSet.getString(4));               // 4th column in table
                setScore(resultSet.getInt(5));                  // 5th column in table
                setAdminStatus(resultSet.getInt(7));            // 7th column in table
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", pseudo='" + pseudo + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", score=" + score +
                ", userStatus='" + userStatus + '\'' +
                ", adminStatus=" + adminStatus +
                '}';
    }
}
