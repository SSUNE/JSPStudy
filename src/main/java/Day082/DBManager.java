package Day082;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
    public static Connection conn;

    public DBManager() {
        conn = null;
    }

    public Connection connection() throws Exception {

        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:/comp/env");
            DataSource db = (DataSource) envContext.lookup("jdbc/myoracle"); // ###
            conn = db.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return conn;
    }
}