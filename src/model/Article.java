package model;

import java.sql.*;

public class Article {
    private int idart;
    private String title;
    private String content;
    private int authorId;
    private int publicationStatus;
    private Date dateart;
    private int count;

    public int getId() {
        return idart;
    }

    public void setId(int id) {
        this.idart = id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count1) {
        this.count = count1;
    }

    public Date setDate(Date datearticle) {
        this.dateart = datearticle;
        return dateart;
    }

    public Date getDate() {
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

    public int getPublicationStatus() {
        return publicationStatus;
    }

    public void setPublicationStatus(int publicationStatus) {
        this.publicationStatus = publicationStatus;
    }


    public String toJsonString() {
        return "{" +
                "\"id\":" + idart + ',' +
                "\"title\":" + title + ',' +
                "\"content\":" + content + ',' +
                "\"authorId\":" + authorId + ',' +
                "\"publicStat\":" + publicationStatus +
                '}';
    }

    public String toHTMLString() {
        if (this.getPublicationStatus() == 0) {       //Non-published articles (for admin) has validate and delete button
            return "<a class='btn btn-success' style='float: right; margin: 1px' href='/AdminArticleServlet?method=validate&id="+ this.getId() +"'>Validate</a>" +
                    "<a class='btn btn-danger' style='float: right; margin: 1px' href='/AdminArticleServlet?method=delete&id="+ this.getId() +"'>Delete</a>"+
                    "<div style='border: solid 1px black; padding: 20px 30px 20px 30px; margin-bottom: 10px'>" +
                    "<section><h5>" + this.getTitle() + "</h5>" +
                    "<p style='font-size: 12px; margin-left: 20px;'>" + "<i>Published on: " + this.getDate() + " by " +
                    this.getAuthorId() + "</i></p><hr></section>" +
                    "<section>" + this.getContent() + "</section>" + "</div>";
        } else {    // Published article standard display
            return "<div style='border: solid 1px black; padding: 20px 30px 20px 30px; margin-bottom: 10px'>" +
                    "<section><h5>" + this.getTitle() + "</h5>" +
                    "<p style='font-size: 12px; margin-left: 20px;'>" + "<i>Published on: " + this.getDate() + " by " +
                    this.getAuthorId() + "</i></p><hr></section>" +
                    "<section>" + this.getContent() + "</section>" + "</div>";
        }

    }
}
