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
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");

        Users user = (Users) request.getSession().getAttribute("user");
        String pseudo = request.getParameter("pseudo");

        Users searchUser = new Score().getUserScore(pseudo);

        // get the pseudo and score of the user wanted
        request.setAttribute("searchPseudo", searchUser.getPseudo());
        request.setAttribute("searchScore", searchUser.getScore());
        // redirect to the score page and display it
        if (user.getAdminStatus()==1){
            request.getRequestDispatcher("/admin/score.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/user/score.jsp").forward(request, response);
        }
    }

}
