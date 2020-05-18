package model;

import java.sql.*;

public class Article {
    private int idart;
    private String title;
    private String content;
    private int authorId;
    private int adminApproverId;
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

    public Date setDate(Date datearticle){
        this.dateart=datearticle;
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

    public int getAdminApproverId() {
        return adminApproverId;
    }

    public void setAdminApproverId(int adminApproverId) {
        this.adminApproverId = adminApproverId;
    }


    public String toJsonString() {
        return "{" +
                "\"id\":" + idart + ',' +
                "\"title\":" + title + ',' +
                "\"content\":" + content  + ',' +
                "\"authorId\":" + authorId  + ',' +
                "\"adminApproval\":" + adminApproverId +
                '}';
    }
    public String toHTMLString(){
    return "<div style='border: solid 1px black; padding: 20px 30px 20px 30px; margin-bottom: 10px'>" +
            "<section><h5>" + this.getTitle() + "</h5>" +
            "<p style='font-size: 12px; margin-left: 20px;'>" + "<i>Published on: " + this.getDate() + " by " +
            this.getAuthorId() +"</i></p><hr></section>" +
            "<section>" + this.getContent() + "</section>" + "</div>";

    }
}
