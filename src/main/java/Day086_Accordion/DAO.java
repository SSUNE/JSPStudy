package Day086_Accordion;


import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

public class DAO {

    public ArrayList<DTO> list() {

        ArrayList<DTO> list = new ArrayList<DTO>();

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            DBManager dbManager = new DBManager();
            connection = dbManager.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        int result = 0;
        String sql = "select * from userinfo";

        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                list.add(new DTO(resultSet.getInt("NO"), resultSet.getString("NAME"), resultSet.getInt("PASS")));
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        return list;
    }
}
