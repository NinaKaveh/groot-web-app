package controller;

import model.Events;
import model.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "/AddEventServlet")
public class AddEventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the addarticle form
        String title = request.getParameter("title");
        String datestart = request.getParameter("datestartform");
        String dateend = request.getParameter("dateendform");
        String content = request.getParameter("content");

        //Sessions
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");

        //Debut ajout event
        Events event = new Events();

        event.setTitle(title);
        event.setContent(content);
        event.setStartDate(datestart);
        event.setEndDate(dateend);

        // add authorId
        event.setAuthorId(user.getId());
        event.setAdminApproverId(0);

        //send values to db
        event.addEvent();

        session.setAttribute("user", user);

        // Redirect to addarticle page
        request.setAttribute("message", "Your event has been submitted to an admin. it will be reviewed by first, and then published");
        request.getRequestDispatcher("user/addevent.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
