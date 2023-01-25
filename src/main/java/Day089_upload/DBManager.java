package Day089_upload;

import java.sql.*;

import javax.naming.*;
import javax.sql.DataSource;

public class DBManager {
	
	public static Connection conn;

	public DBManager() { conn = null; }
	
			
	public Connection getConnection() throws Exception{
		
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");    
			DataSource db = (DataSource)envContext.lookup("jdbc/TestDB"); // ###
			conn = db.getConnection();		
		} catch(Exception e) {e.printStackTrace();}
		
		return conn;
	}
	
}
