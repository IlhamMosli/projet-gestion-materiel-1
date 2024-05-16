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

 
out.println("record Added");
response.sendRedirect("intervention.jsp");
 %>