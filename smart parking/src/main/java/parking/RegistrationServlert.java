package parking;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlert extends HttpServlet {
	@Resource(name="jdbc/smartparkingsystem")
	private DataSource dataSource;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Connection connection;
		PreparedStatement preparedStatement;
		String Firstname =request.getParameter("name");
		String Emailid=request.getParameter("email");
		String Gender =request.getParameter("gender");
		String Phonenumber =request.getParameter("number");
		String Username=request.getParameter("username");
		String Password =request.getParameter("password");
		
		try {
			connection =dataSource.getConnection();
			preparedStatement = connection.prepareStatement("insert into parking values(?,?,?,?,?,?)");
			preparedStatement.setString(1,Firstname);  
			preparedStatement.setString(2,Emailid);
			preparedStatement.setString(3,Gender);  
			preparedStatement.setString(4,Phonenumber);
			preparedStatement.setString(5,Username);
			preparedStatement.setString(6, Password );
			preparedStatement.execute();
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("Login.jsp");
			requestDispatcher.include(request,response);
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Registration Successfull');"); 
			out.println("location='Login.jsp';"); 
			out.println("</script>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
