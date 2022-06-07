import java.sql.*;

public class connection {

	Connection con = null;

	public static Connection connectDB()

	{

		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/EmployeeDetails",
				"root", "1bm19cs187");


			return con;
		}


		catch (SQLException | ClassNotFoundException e) {


			System.out.println(e);

			return null;
		}
	}
}
