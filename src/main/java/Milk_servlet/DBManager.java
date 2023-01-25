package Milk_servlet;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
    static private Connection connection;

    public DBManager() {
    }

    public Connection connection(){
        String user = "root";
        String pw = "12341234";
        String url = "jdbc:mysql://localhost:3306/db0?useSSL=false";

        connection = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url,user,pw);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
