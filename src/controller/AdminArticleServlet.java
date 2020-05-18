package controller;

import model.Users;
import services.ArticlesService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "/AdminArticleServlet")
public class AdminArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("validate") != null) {

            request.setAttribute("editArticle", "The article is officially published.");
        } else if (request.getParameter("delete") != null) {

            request.setAttribute("editArticle", "The article has been deleted.");
        } else {
            request.setAttribute("editArticle", "Tests message display.");

        }
        response.sendRedirect("admin/allarticles.jsp");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        Users user = (Users) request.getSession().getAttribute("user");
        ArticlesService provider = ArticlesService.getInstance();
        try {
            provider.AdminGetAll();
            out.println(provider.toHtmlString());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
