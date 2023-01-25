package Day084_Paging.Paging;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;

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