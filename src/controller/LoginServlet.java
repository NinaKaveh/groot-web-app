package controller;

import model.Security;
import model.TestJDBC;
import model.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

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
            // Create user session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Create cookies
            String id = String.valueOf(user.getId());
            Cookie logCookie = new Cookie ("id",id);
            logCookie.setMaxAge(45*60);       // 45 minutes
            response.addCookie(logCookie);

            request.setAttribute("name", user.getPseudo());
            if (user.getAdminStatus()!=1){
                request.getRequestDispatcher("welcome.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("admin/adminHomePage.jsp").forward(request, response);
            }
        } else {
            // Redirect to login page
            request.setAttribute("message", "User not found ! Invalid email or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        /*
        Statement statement;
        ResultSet resultSet = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3308/groot?useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            java.sql.Connection connection = DriverManager.getConnection(url, "root", "");
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT email,password FROM users WHERE email = '"+email+"'");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            while (resultSet.next()) {
                String login = resultSet.getString(4).trim();
                String id = resultSet.getString(1).trim();
                String pw = resultSet.getString(3).trim();
                System.out.println(login +" " + pw);
                System.out.println(email +" " +password);
                if (email.equals(login) && password.equals(pw)) {
                    Cookie loginCookie = new Cookie ("id", id);
                    loginCookie.setMaxAge(30*60);
                    response.addCookie(loginCookie);
                    response.sendRedirect("user/userHomePage.jsp");
                } else {
                    // redirect to login page with error
                }
                break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
*/
    }

}
