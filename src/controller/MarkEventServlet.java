package controller;

import model.Events;
import model.Users;
import services.EventsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "/MarkEventServlet")
public class MarkEventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the event mark form
        String i = request.getParameter("input1");
        int id = Integer.parseInt(i);
        System.out.println(id);

        Events event = new Events();

        event.setId(id);
        event.setAdminApproverId(1);

        //send values to db
        EventsService.getInstance().markEvent(event);

        // Redirect to allevents page
        request.setAttribute("message", "Well done !");
        request.getRequestDispatcher("admin/allevents.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
