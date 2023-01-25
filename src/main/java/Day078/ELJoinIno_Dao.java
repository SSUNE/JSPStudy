package Day078;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ELJoinIno_Dao {

    Connection connection;

    public int insert(ELJoinIno user) {

        DBManager db = new DBManager();
        PreparedStatement pstmt = null;
        int result = 0;
        String sql = "insert into student values (std_seq.nextval, ?, ?, ? )";

        try {
            connection = db.connection();
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, user.getName());
            pstmt.setInt(2, user.getAge());
            pstmt.setInt(3, user.getGrade());

            result = pstmt.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pstmt != null) {
                try {
                    pstmt.close();
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
        return result;
    }
}
