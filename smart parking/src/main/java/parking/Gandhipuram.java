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
 * Servlet implementation class Othakalmandabam
 */
@WebServlet("/Gandhipuram")
public class Gandhipuram extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc/smartparkingsystem")
	private DataSource Datasource;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gandhipuram() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		Connection connection;
		PreparedStatement preparedstatement;
		
		final String INSERT_QUERY ="insert into smartparkingsystem.gandhipuram(location,name,Hours,vehicletype,VehicleNumber,phonenumber,slotno) values(?,?,?,?,?,?,?)";
		try {
			connection = Datasource.getConnection();
			preparedstatement = connection.prepareStatement(INSERT_QUERY);
			preparedstatement.setString(1,request.getParameter("Location"));
			preparedstatement.setString(2,request.getParameter("Username"));
			preparedstatement.setString(3,request.getParameter("HOP"));
			preparedstatement.setString(4,request.getParameter("Vehicletype"));
			preparedstatement.setString(5,request.getParameter("number"));
			preparedstatement.setString(6,request.getParameter("VechicleNumber"));
			String Slotno=request.getParameter("Slotno");
			preparedstatement.setString(7,Slotno);

			
			int Status = preparedstatement.executeUpdate();
		
			
			
			if(Status!=0) {
				final String UPDATE_QUERY ="update Smartparkingsystem.slotgandhipuram set status=1 where Slots=?";
				
				connection = Datasource.getConnection();
				preparedstatement = connection.prepareStatement(UPDATE_QUERY);
				preparedstatement.setString(1,request.getParameter("Slotno"));
				preparedstatement.executeUpdate();
				RequestDispatcher requestDispatcher=request.getRequestDispatcher("/Payment.jsp");
				requestDispatcher.forward(request, response);
			
			
			}
		
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

