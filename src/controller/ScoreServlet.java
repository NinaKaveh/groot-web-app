package controller;

import model.Score;
import model.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ScoreServlet")
public class ScoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Users user = (Users) request.getSession().getAttribute("user");
        String pseudo = request.getParameter("pseudo");

        Users searchUser = new Score().getUserScore(pseudo);

        request.setAttribute("searchPseudo", searchUser.getPseudo());
        request.setAttribute("searchScore", searchUser.getScore());
        request.getRequestDispatcher("/user/score.jsp").forward(request, response);

        /*
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<script>" +
                "$('searchUser').after('Pseudo : '"+searchUser.getPseudo()+ ");" +
                "$('searchUser').after('Score : '"+searchUser.getScore()+ ");" +
                "</script>");
        request.getRequestDispatcher("/user/score.jsp").include(request, response);
        out.close();
         */

    }

}
