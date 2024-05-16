<%@ page import="java.sql.*" %> 
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Intervention</title>
    <!-- Inclure les liens CSS et JS nécessaires pour Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Edit Intervention</h1>
        <div class="row">
            <div class="col-sm-6">
                <form method="POST" action="update.jsp">
                    <% 
                    Connection con = null;
                    PreparedStatement pst = null;
                    ResultSet rs = null;

                    try {
                        // Établir la connexion à la base de données
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/materiel", "root", "");

                        // Récupérer le paramètre "serieI" provenant du formulaire précédent
                        String serieI = request.getParameter("serieI");

                        // Exécuter la requête SQL pour récupérer les détails de l'intervention
                        pst = con.prepareStatement("SELECT * FROM intervention WHERE serieI = ?");
                        pst.setString(1, serieI);
                        rs = pst.executeQuery();

                        // Si une intervention est trouvée pour la série spécifiée
                        if (rs.next()) {
                    %>   
                    <div class="form-group">
                        <label for="serie">Série de matériel:</label>
                        <input type="text" class="form-control" id="serie" name="serieI" value="<%= rs.getString("serieI") %>" readonly>
                    </div>
                    <div class="form-group">
                        <label for="technicien">Nom du technicien:</label>
                        <input type="text" class="form-control" id="technicien" name="technicien" value="<%= rs.getString("technicien") %>" required>
                    </div>
                    <div class="form-group">
                        <label for="telephone">Téléphone:</label>
                        <input type="text" class="form-control" id="telephone" name="telephone" value="<%= rs.getString("telephone") %>" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description:</label>
                        <textarea class="form-control" id="description" name="description" required><%= rs.getString("description") %></textarea>
                    </div>
                    <div class="form-group">
                        <label for="solution">Solution:</label>
                        <textarea class="form-control" id="solution" name="solution" required><%= rs.getString("solution") %></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a href="intervention.jsp" class="btn btn-secondary">Cancel</a>
                    <% 
                        } else {
                            // Aucune intervention trouvée pour cette série
                            out.println("Aucune intervention trouvée pour la série: " + serieI);
                        }
                    } catch (Exception e) {
                        // Gestion des exceptions
                        e.printStackTrace();
                    } finally {
                        // Fermeture des ressources
                        if (rs != null) {
                            try {
                                rs.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        if (pst != null) {
                            try {
                                pst.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        if (con != null) {
                            try {
                                con.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    %>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
