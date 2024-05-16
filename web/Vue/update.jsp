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
                   
            </div>
        </div>
    </div>
</body>
</html>
