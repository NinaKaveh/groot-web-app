package controller;

import services.ArticlesService;
import services.EventsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "/EventsServlet")
public class EventsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");
        //call service to fetch all events
        EventsService provider = EventsService.getInstance();
        try {
            provider.getAll();
            out.println(provider.toHtmlString());
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
