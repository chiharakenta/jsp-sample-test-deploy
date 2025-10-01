package com.mycompany.app;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setAttribute("message", "Hello, World!");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/hello/index.jsp");
        dispatcher.forward(req, res);
    }
}
