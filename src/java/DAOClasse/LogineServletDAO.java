package DAOClasse;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LogineServletDAO")

public class LogineServletDAO extends HttpServlet {


	private static final long serialVersionUID = 1L;	 

	public LogineServletDAO() {
		super();
	}

	
	@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

		
		String emailId = request.getParameter("emailId");
		String password = request.getParameter("password");
		System.out.println("emailId.." + emailId);
		System.out.println("password.." + password);
		
		if (emailId != null && emailId.equalsIgnoreCase("admin@gmail.com") && password != null && password.equalsIgnoreCase("admin")) {
			
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("emailId", emailId);
			request.getRequestDispatcher("index.html").forward(request, response);
		}
	}
}
