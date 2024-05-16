<%@page import="java.sql.*" %> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% 

String serieI = request.getParameter("serieI");

 Connection con;
                            PreparedStatement pst;
                          

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/materiel","root","");
 pst = con.prepareStatement("delete from intervention where serieI = ?");
pst.setString(1,serieI);
pst.executeUpdate();
 

