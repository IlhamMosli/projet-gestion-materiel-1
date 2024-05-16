<%
    
String username = request.getParameter("uname");
String password = request.getParameter("password");

if(username.equals("admin@gmail.com") && password.equals("admin"))
{
        String redirect ="intervention.jsp";
        response.sendRedirect(redirect);
    
   }
   else{

     out.println("Username or Password Do not Match ");
}

%>

