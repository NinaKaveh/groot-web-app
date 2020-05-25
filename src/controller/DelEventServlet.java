package controller;

import model.Events;
import services.EventsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/DelEventServlet")
public class DelEventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the event mark form
        String i = request.getParameter("input1");
        int id = Integer.parseInt(i);

        Events event = new Events();

        event.setId(id);

        //send values to db
        EventsService.getInstance().delEvent(event);

        // Redirect to allevents page
        request.setAttribute("message", "This event has been deleted !");
        response.sendRedirect("admin/allevents.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
