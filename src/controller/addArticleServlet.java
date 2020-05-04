package controller;

import model.Article;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/AddArticleServlet")
public class addArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the register form
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        Article article = new Article();

        // Add user to database
        article.setTitle(title);
        article.setContent(content);

        // add userid
        article.setAuthorId(123);
        article.setAdminApproverId(0);

        article.addArticle();

        // Redirect to login page
        request.setAttribute("message", "Your article has been added successfully to Groot, it will be reviewed by an admin first, and then published");
        request.getRequestDispatcher("addarticle.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
