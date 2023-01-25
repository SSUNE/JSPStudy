package Day080;

import java.sql.*;
import java.util.*;

public class JSTLItemDao {
    /*
    1. select * from jstlitem
        테이블의 모든 데이터 출력
        return	  : ArrayList<JSTLItem>
        parameter : x
    */
    public ArrayList<JSTLItem> list() {
        ArrayList<JSTLItem> list = new ArrayList<>();
        DBManager db = new DBManager();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        String sql = "select * from jstlitem";

        try {
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                list.add(new JSTLItem(resultSet.getInt("ino"), resultSet.getString("name"),
                        resultSet.getInt("price"), resultSet.getString("description")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return list;
    }

}
