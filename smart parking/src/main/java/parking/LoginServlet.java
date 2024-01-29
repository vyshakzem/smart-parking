package parking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	@Resource(name="jdbc/smartparkingsystem")
	private DataSource datasource;
	private static final long serialVersionUID = 1L;

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession(); 
		String Userid=request.getParameter("username");
		session.setAttribute("Username", Userid);
	     String password=request.getParameter("password");
	     PrintWriter out=response.getWriter();
	     Connection connectioncn;
	     java.sql.Statement statement;
	     ResultSet resultSet;
	     final String SELECT_QUERY = "SELECT * from parking";
			
			try {
				connectioncn = datasource.getConnection();
				statement =connectioncn.createStatement();
				
				resultSet =statement.executeQuery(SELECT_QUERY);
				int flag = 0;
				while (resultSet.next()) {
					
					if(resultSet.getString("username").equals(Userid)&&resultSet.getString("password").equals(password)) {
						flag = 1;
						RequestDispatcher requestdispatcher=request.getRequestDispatcher("Welcome.jsp");
						requestdispatcher.forward(request, response);
						
					}

	
				}
				if(flag==0) {
					
					out.println("<script type=\"text/javascript\">"); 
						out.println("alert('Invalid Username or Password');"); 
						out.println("location='Login.jsp';"); 
						out.println("</script>");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				out.println();
			}
	}
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
				doGet(request, response);
		}
}