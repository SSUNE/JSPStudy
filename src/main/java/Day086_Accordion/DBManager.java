package Day086_Accordion;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;

public class DBManager {
    public static Connection connection;

    public DBManager() {
        connection = null;
    }

    public Connection connection() throws Exception {

        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:/comp/env");
            DataSource db = (DataSource) envContext.lookup("jdbc/myoracle"); // ###
            connection = db.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return connection;
    }
}