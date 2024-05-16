<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% 

String serieI = request.getParameter("serieI");
String nomI = request.getParameter("nomI");
String dateI = request.getParameter("dateI");
String telephoneI = request.getParameter("telephoneI");
String descriptionI = request.getParameter("descriptionI");
String solutionI = request.getParameter("solutionI");
 Connection con;
                            PreparedStatement pst;
                          

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/materiel","root","");
 pst = con.prepareStatement( "insert into intervention (serieI, nomI, dateI, telephoneI, descriptionI,solutionI) VALUES (?, ?, ?, ?, ?,?)");
pst.setString(1, serieI);
pst.setString(2, nomI);
pst.setString(3, dateI);
pst.setString(4, telephoneI);
pst.setString(5, descriptionI);
pst.setString(6, solutionI);
pst.executeUpdate();
 
out.println("record Added");
response.sendRedirect("intervention.jsp");
 %>