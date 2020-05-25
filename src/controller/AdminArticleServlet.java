package controller;

import services.ArticlesService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/AdminArticleServlet")
public class AdminArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        String articleID = request.getParameter("id");
        if (method != null) {
            if (articleID != null) {
                if (method.equals("validate")) {
                    ArticlesService.getInstance().validateArticle(articleID);
                    request.setAttribute("editArticle", "The article is officially published.");
                    request.getRequestDispatcher("/admin/success.jsp").forward(request, response);
                } else if (method.equals("delete")) {
                    ArticlesService.getInstance().deleteArticle(articleID);
                    request.setAttribute("editArticle", "The article has been deleted.");
                    request.getRequestDispatcher("/admin/success.jsp").forward(request, response);
                } else System.out.println("Error");
            } else System.out.println("Error");
        } else {
            request.setAttribute("editArticle", "No modification done");
            request.getRequestDispatcher("/admin/adminHomePage.jsp").forward(request, response);

        }
    }
}
