package model;

import java.sql.*;

public class Events {
    // create objects
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
    public void setId(int id){
        this.id= id;
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
        // used to add a new event to db
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

    // for displaying events in admin table
    public String toHTMLString(){
        if(this.getAdminApproverId()==1)
            // if event has been already marked
            return  "<tr>" +
                    "<th scope=\"row\">" + this.getId() + "</th>" +
                    "<td>" + this.getAuthorId() + "</td>" +
                    "<td class='btn-secondary'>" + "ALREADY VIEWED" +"</td>" +
                    "<td>" + this.getTitle() + "</td>" +
                    "<td>" + this.getStartDate() + "</td>" +
                    "<td>" + this.getEndDate() + "</td>" +
                    "<td>" + this.getContent() + "</td>" +
                    "<td>" +
                    "<form method=\"post\" name=\"DelEvent\" action=\"/DelEventServlet\">" +
                    "<input type=\"text\" style=\"display:none\" name=\"input1\" value=\"" + this.getId()  + "\"> " +
                    "<button type=\"submit\" class=\"btn btn-warning\">Delete</button></form>" +
                    "</td>" +
                    "</tr>";
        else
            // if the event is not marked :
            return  "<tr>" +
                    "<th scope=\"row\">" + this.getId() + "</th>" +
                    "<td>" + this.getAuthorId() + "</td>" +
                    "<td class='btn-success'> NEW ! </td>" +
                    "<td>" + this.getTitle() + "</td>" +
                    "<td>" + this.getStartDate() + "</td>" +
                    "<td>" + this.getEndDate() + "</td>" +
                    "<td>" + this.getContent() + "</td>" +
                    "<td>" +
                    "<form method=\"post\" name=\"DelEvent\" action=\"/DelEventServlet\">" +
                    "<input type=\"text\" style=\"display:none\" name=\"input1\" value=\"" + this.getId()  + "\"> " +
                    "<button type=\"submit\" class=\"btn btn-warning\">Delete</button></form>" +
                    "<form method=\"post\" name=\"MarkEventViewed\" action=\"/MarkEventServlet\">" +
                    "<input type=\"text\" style=\"display:none\" name=\"input1\" value=\"" + this.getId()  + "\"> " +
                    "<button type=\"submit\" class=\"btn btn-success\">Mark as viewed</button></form>" +
                    "</td>" +
                    "</tr>";

    }

    // display event to string
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
