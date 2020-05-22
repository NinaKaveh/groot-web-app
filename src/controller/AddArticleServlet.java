package controller;

import model.Article;
import model.Users;
import services.ArticlesService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "/AddArticleServlet")
public class AddArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");

        // Retrieve data from the addarticle form
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");

        Article article = new Article();

        article.setTitle(title);
        article.setContent(content);

        // add authorId
        article.setAuthorId(user.getId());
        article.setPublicationStatus(0);

        //send values to db
        ArticlesService.getInstance().addArticle(article);

        session.setAttribute("user", user);

        // Redirect to addarticle page
        request.setAttribute("message", "Your article has been added successfully to Groot, it will be reviewed by an admin first, and then published");
        request.getRequestDispatcher("user/addarticle.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
