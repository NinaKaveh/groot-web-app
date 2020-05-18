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

@WebServlet(name = "/ArticleServlet")
public class ArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");

        Users user = (Users) req.getSession().getAttribute("user");
        ArticlesService provider = ArticlesService.getInstance();

        if (user.getAdminStatus()==1){      // get only unpublished articles
            try {
                provider.AdminGetAll();
                out.println(provider.toHtmlString());
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                provider.getAll();
                out.println(provider.toHtmlString());
            } catch (Exception e) {
                e.printStackTrace();
            }

        }




    }
}
