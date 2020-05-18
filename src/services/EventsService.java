package services;

import model.Article;
import model.ConnectJDBC;
import model.Events;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EventsService {
    private ArrayList<Events> allEvents = new ArrayList<Events>();
    private static EventsService INSTANCE = null;

    private EventsService()
    {}

    // To be called by event servlet
    public static EventsService getInstance()
    {
        if (INSTANCE == null) {
            INSTANCE = new EventsService();
        }
        return INSTANCE;
    }

    /*public void addArticle(Article article) {
        try {
            // Establish connection
            Connection connection = ConnectJDBC.connectDB();

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
    }*/

    //First get all events
    public ArrayList<Events> getAll(){
        allEvents.clear();
        if(this.allEvents.size() == 0){
            this.fetchAll();
        }
        return this.allEvents;
    }

    //Retrieve content from database
    public void fetchAll() {
        try {
            // Establish connection
            Connection connection = ConnectJDBC.connectDB();

            //Recuperation articles
            PreparedStatement prepStat = connection.prepareStatement("SELECT * FROM events ORDER by id DESC");
            ResultSet resultSet = prepStat.executeQuery();
            while (resultSet.next()) {
                Events event = new Events();
                event.setId(resultSet.getInt(1)); //1st column
                event.setTitle(resultSet.getString(2));
                event.setContent(resultSet.getString(3));
                event.setStartDate(resultSet.getString(4));
                event.setEndDate(resultSet.getString(5));
                event.setAdminApproverId(resultSet.getInt(6));
                event.setAuthorId(resultSet.getInt(7));
                allEvents.add(event);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    //Display arraylist to html content
    public String toHtmlString() {
        String htmlString = "";
        int eventsCount = allEvents.size();
        for(int itr = 0; itr < eventsCount ; ++itr){
            htmlString += allEvents.get(itr).toHTMLString();
        }
        return htmlString;
    }
}

