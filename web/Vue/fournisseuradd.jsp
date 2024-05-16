<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% 

String nom = request.getParameter("nom");
String adresse = request.getParameter("adresse");
String email = request.getParameter("email");
String telephone = request.getParameter("telephone");
String site_web = request.getParameter("site_web");
 Connection con;
                            PreparedStatement pst;
                          

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/materiel","root","");
 pst = con.prepareStatement( "insert into fournisseur (nom, adresse, email, telephone, site_web) VALUES (?, ?, ?, ?, ?)");
pst.setString(1, nom);
pst.setString(2, adresse);
pst.setString(3, email);
pst.setString(4, telephone);
pst.setString(5, site_web);
pst.executeUpdate();
 
out.println("record Added");
response.sendRedirect("fournisseur.jsp");
 %>
