package parking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ParkingSlot1Servlet
 */
@WebServlet("/ParkingSlot1Servlet")
public class ParkingSlot1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc/smartparkingsystem")
	private DataSource datasource;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParkingSlot1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
	     Connection connectioncn;
	     java.sql.Statement statement;
	     ResultSet resultSet;
	     final String SELECT_QUERY = "SELECT * from slotothakalmandabam";
	     out.println("<html>");
			out.println("<head>"+"<link rel=\"stylesheet\" href=\"Slot.css\">"+"<title>SMART PARKING SYSTEMS</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<ul>\r\n"
					+ "\r\n"
					+ "  <li><a href=\"Login.jsp\" class=\"link\">Login</a></li>\r\n"
					+ "  <li><a href=\"AboutUs.jsp\" class=\"link\">About</a></li>\r\n"
					+ "  <li><a href=\"Contact.jsp\" class=\"link\">Contact</a></li>\r\n"
					+ "  <li><a href=\"Index.jsp\" class=\"link\">Home</a></li>\r\n"
					+ " \r\n"
					+ "  <h4> SMART PARKING SYSTEM</h4>\r\n"
					+ "</ul>");
			out.println("<div class=\"filters\">\r\n"
					+ "  <h3>LOCATION</h3>\r\n"
					+ "  <button onclick=\"location.href='ParkingSlot2Servlet';\" class=\"link\" data-filter=\"walks\">GANDHIPURAM</button> \r\n"
					+ "  <button  onclick=\"location.href='ParkingSlot3Servlet';\"class=\"filter-option\" data-filter=\"flies\">KARPAGAM</button> \r\n"
					+ "  <button onclick=\"location.href='ParkingSlot4Servlet';\"class=\"filter-option\" data-filter=\"*\">MALUMICHANPATI</button>\r\n"
					+ "</div>");
			
			try {
				connectioncn = datasource.getConnection();
				statement =connectioncn.createStatement();
				resultSet =statement.executeQuery(SELECT_QUERY);
				out.println("<form action=\"Booking.jsp\" method =\"post\">\r\n"
						+ "<h1>Parking Slot</h1>\r\n"
						+ "    <div class=\"parking-lot\">");
				while(resultSet.next()) {
					if(resultSet.getString("Status").equals("0")) {
						String slot= resultSet.getString("Slotnumber");
						out.println(" <div class=\"parking-space free\">\r\n"
								+ "              <button onclick=\"location.href='Booking.jsp';\" value ='"+slot+"'  name = \"slot\" >" + resultSet.getString("Slotnumber") +"</button>\r\n"
								+ "              </div>");
					}
					else {
						out.println(" <div class=\"parking-space taken\">\r\n"
								+ "              <button disabled>"+ resultSet.getString("Slotnumber") +"</button>\r\n"
								+ "              </div>");
						
						out.println("<script>");
						out.println("<document.getElementById(\"myButton\").disabled = true;>");
						out.println("</script>");
						
					}
					
				}
				out.println("</form>"+"</body>"+"</html>");
				
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
