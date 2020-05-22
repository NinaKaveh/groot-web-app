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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        Users user = (Users) request.getSession().getAttribute("user");
        ArticlesService provider = ArticlesService.getInstance();


        try {
            if (user.getAdminStatus()==1){
                String requestURL = request.getRequestURL().toString();
                if (requestURL.equals("http://localhost:8080/admin/adminHomePage.jsp")){
                    provider.AdminGetAll(-1);
                } else {
                    provider.getAll(-1);
                }
            } else {
                provider.getAll(-1);
            }
            out.println(provider.toHtmlString());
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
