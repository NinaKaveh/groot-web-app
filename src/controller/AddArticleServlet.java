package controller;

import model.Article;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.Timestamp;

@WebServlet(name = "/AddArticleServlet")
public class AddArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the addarticle form
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        // Add user to database
        Article article = new Article();

        article.setTitle(title);
        article.setContent(content);

        // add authorId
        article.setAuthorId(123);
        article.setAdminApproverId(0);

        //send values to db
        article.addArticle();

        // Redirect to addarticle page
        request.setAttribute("message", "Your article has been added successfully to Groot, it will be reviewed by an admin first, and then published");
        request.getRequestDispatcher("addarticle.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
