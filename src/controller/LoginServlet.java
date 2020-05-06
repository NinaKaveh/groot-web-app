package controller;

import model.Security;
import model.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the login form
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        Users user = new Users();
        //hash the password
        Security security = new Security();
        String hashedPass = security.hashPassword(password);
        user.getUser(email, hashedPass);

        // Checking if the user exists
        if (user!=null && user.getEmail()!=null && user.getPassword()!=null){

            //remove old session if exists
            HttpSession session = request.getSession();
            if (session != null) session.invalidate();

            // Create user session
            session = request.getSession(true);
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(20*60);          //if the user is inactive during 20min

            // Create cookies
            Cookie id = new Cookie ("id",String.valueOf(user.getId()));
            Cookie pseudo = new Cookie("pseudo", user.getPseudo());
            Cookie mail = new Cookie("mail", user.getEmail());
            Cookie score = new Cookie("score", String.valueOf(user.getScore()));
            response.addCookie(id);
            response.addCookie(pseudo);
            response.addCookie(mail);
            response.addCookie(score);

            request.getSession().setAttribute("session", true);
            if (user.getAdminStatus()!=1){
                response.sendRedirect(request.getContextPath() + "user/welcome.jsp");
            } else {
                response.sendRedirect(request.getContextPath() + "admin/adminHomePage.jsp");
            }
        } else {
            // Redirect to login page
            request.getSession().setAttribute("session", false);
            request.setAttribute("message", "User not found ! Invalid email or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

}
