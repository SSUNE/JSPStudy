package Day078;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
    static private Connection connection;

    public Connection connection() {
        connection = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "ouser", "1111");

            if (connection != null) {
                System.out.println("연동성공");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}