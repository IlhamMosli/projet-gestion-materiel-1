/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlle;
import java.io.IOException;
import java.io.PrintWriter;
import DAOClasse.FournisseurDAO;
import DAOClasse.InterventionDAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/AjouterIntervention")
public class AjouterInterventionServlet extends HttpServlet {

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String serie = request.getParameter("serieI");
        String nom = request.getParameter("nomI");
        String date = request.getParameter("dateI");
        String telephone = request.getParameter("telephoneI");
        String description = request.getParameter("descriptionI");
        String solution = request.getParameter("solutionI");

        // Insérer les données dans la base de données
        InterventionDAO.insertIntervention(serie, nom, date, telephone, description, solution);

       response.sendRedirect("Vue/intervention.jsp");

    }}
  

   