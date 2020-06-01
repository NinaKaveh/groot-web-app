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

        //get sessions
        Users user = (Users) request.getSession().getAttribute("user");
        ArticlesService provider = ArticlesService.getInstance();

        // admin's display is different than user's display
        try {
            String requestURL = request.getRequestURL().toString();
            if (user.getAdminStatus()==1){
                if (requestURL.equals("http://localhost:8080/admin/adminHomePage.jsp")){
                    provider.AdminGetAllUnpublished();
                } else {
                    // display all
                    provider.getAll(-1,false, user.getId());
                }
                out.println(provider.toHtmlString(false));
            } else {
                if (requestURL.equals("http://localhost:8080/user/profile.jsp")){
                    // display only user's articles
                    provider.getAll(-1,true, user.getId());
                    out.println(provider.toHtmlString(true));

                } else {
                    // display all
                    provider.getAll(-1,false, user.getId());
                    out.println(provider.toHtmlString(false));

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
