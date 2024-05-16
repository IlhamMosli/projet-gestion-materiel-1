
package DAOClasse;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet(name = "InterventionDAO", urlPatterns = {"/InterventionDAO"})
public class InterventionDAO extends HttpServlet {

    
    public static void insertIntervention(String serieI, String nomI, String dateI, String telephoneI, String descriptionI , String solutionI) {
        Connection conn = null;
        PreparedStatement stmt = null;
        
      try {
    // Charger le pilote JDBC
    Class.forName("com.mysql.cj.jdbc.Driver");
    
    // Établir la connexion à la base de données
     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionm", "root", "");
    
    // Créer la requête SQL pour insérer des données dans la table
    String sql = "INSERT INTO intervention (serieI, nomI, dateI, telephoneI, descriptionI ,solutionI) VALUES (?, ?, ?, ?, ?, ?)";
    stmt = conn.prepareStatement(sql);
    stmt.setString(1, serieI);
    stmt.setString(2, nomI);
    stmt.setString(3, dateI);
    stmt.setString(4, telephoneI);
    stmt.setString(5, descriptionI);
    stmt.setString(6, solutionI);
    // Exécuter la requête
    int rowsAffected = stmt.executeUpdate();
    
    if (rowsAffected > 0) {
        // Succès de l'insertion
        System.out.println("Insertion réussie.");
    } else {
        // Aucune ligne insérée
        System.out.println("Aucune insertion effectuée.");
    }
    
    // Fermer les ressources
    stmt.close();
    conn.close();
} catch (ClassNotFoundException | SQLException ex) {
    // Gestion des exceptions
    ex.printStackTrace();
}}

 }  
