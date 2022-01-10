package mvc.database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DBConnection {
	
	public static Connection getConnection()throws SQLException, ClassNotFoundException  {		

		Connection conn = null;		
	
		String url = "jdbc:mysql://localhost:3306/webmarketdb?autoReconnect=true";
		String user = "root";
		String password = "8877";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);		
		
		return conn;
	}



	
}
