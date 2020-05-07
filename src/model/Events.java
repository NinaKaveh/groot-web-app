package model;

import java.sql.*;

public class Events {
    private int id;
    private String title;
    private String content;
    private String datestart;
    private String dateend;
    private int authorId;
    private int adminApproverId;

    // ID EVENT
    public int getId() {
        return id;
    }

    // DATE DEBUT
    public void setStartDate(String datedebut){
        this.datestart= datedebut;
    }
    public String getStartDate() {
        return datestart;
    }

    // DATE FIN
    public void setEndDate(String datefin){
        this.dateend= datefin;
    }
    public String getEndDate() {
        return dateend;
    }

    //EVENT TITLE
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    //EVENT DESCRIPTION CONTENT
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }

    //EVENT AUTHOR ID
    public int getAuthorId() {
        return authorId;
    }
    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    //EVENT APPROVAL BY ADMIN
    public int getAdminApproverId() {
        return adminApproverId;
    }
    public void setAdminApproverId(int adminApproverId) {
        this.adminApproverId = adminApproverId;
    }

    // CLASS ADDEVENT
    public void addEvent() {
        try {
            // Establish connection
            Connection connection = ConnectJDBC.connectDB();

            // Use of prepared statement to avoid security breach
            PreparedStatement prepStat = connection.prepareStatement("INSERT INTO events VALUES (NULL,?,?,?,?,0,?)");
            prepStat.setString(1, getTitle());
            prepStat.setString(2, getContent());
            prepStat.setString(3, getStartDate());
            prepStat.setString(4, getEndDate());
            prepStat.setInt(5, getAuthorId());

            System.out.println(this);
            prepStat.executeUpdate();

        }  catch (SQLException e) {
            e.printStackTrace();
        }
    }



    @Override
    public String toString() {
        return "Event{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", start date='" + datestart + '\'' +
                ", end date='" + dateend + '\'' +
                ", author=" + authorId +
                ", admin approval='" + 0 + '\'' +
                '}';
    }
}
