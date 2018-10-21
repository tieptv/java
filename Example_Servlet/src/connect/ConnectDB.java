package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;

public class ConnectDB {
	private static final String DB_URL = "jdbc:sqlserver://localhost:1433;" + "databaseName=CMC_FINAL;"
			+ "integratedSecurity=true";
	private static final  String USER_NAME = "sa";
	private static final  String PASSWORD = "123";
	static Logger log=Logger.getLogger(ConnectDB.class);
	public static Connection getConnection() {
		Connection con = null;

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = (Connection) DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.debug("Unconnected!");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			log.debug("Unconnected!");
			e.printStackTrace();
		}
		return con;
	}

}
