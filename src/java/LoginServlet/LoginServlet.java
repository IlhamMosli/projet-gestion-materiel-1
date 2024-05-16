package com.yourpackage;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String UTILISATEUR_UNIQUE = "admin";
    private static final String MOT_DE_PASSE_UNIQUE = "admin";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        

        if (user.equals(UTILISATEUR_UNIQUE) && password.equals(MOT_DE_PASSE_UNIQUE)) {
            response.sendRedirect("success.jsp");
        } else {
            // Display error message
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body><h2>Login Error: Incorrect username or password</h2></body></html>");
        }
    }
}
