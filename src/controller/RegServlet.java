package controller;

import model.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/RegServlet")
public class RegServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the register form
        String pseudo = request.getParameter("pseudo");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Users user = new Users();

        // Add user to database
        user.setPseudo(pseudo);
        user.setEmail(email);
        user.setPassword(password);
        user.setUserStatus("on");
        user.setAdminStatus(0);
        user.addUser();

        // Redirect to login page
        request.setAttribute("message", "Welcome among us. You registered successfully ! Log in now by using your email and your password.");
        request.getRequestDispatcher("login.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
