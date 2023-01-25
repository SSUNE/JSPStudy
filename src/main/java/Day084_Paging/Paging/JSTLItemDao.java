package Day084_Paging.Paging;

import Day084_Paging.DBManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JSTLItemDao {
    /*
    1. select * from jstlitem
        테이블의 모든 데이터 출력
        return	  : ArrayList<JSTLItem>
        parameter : x
    */
    public ArrayList<JSTLItem> listAll(int pstartno) {
        ArrayList<JSTLItem> list = new ArrayList<>();
        DBManager db = new DBManager();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        String sql = "select * from (select rownum rnum, a.* from (select * from jstlitem order by ino desc)a)b where b.rnum between ? and ?";

        try {
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, pstartno + 1);
            preparedStatement.setInt(2, pstartno + 10);
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

    public int listcnt() {

        int cnt = -1;

        String sql = "select count(*) cnt from jstlitem";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rset =null;
        try {
            DBManager db = new DBManager();
            conn = db.connection();
        }catch(Exception e) {e.printStackTrace();}

        try {
            pstmt = conn.prepareStatement(sql);
            rset = pstmt.executeQuery();
            while(rset.next()) {
                cnt = rset.getInt("cnt");
            }
        }catch(Exception e) {
            e.printStackTrace();
        }finally {
            if(rset!=null) {try{rset.close();}catch(Exception e) {e.printStackTrace();}}
            if(pstmt!=null) {try{pstmt.close();}catch(Exception e) {e.printStackTrace();}}
            if(conn!=null) {try{conn.close();}catch(Exception e) {e.printStackTrace();}}
        }


        return cnt;

    }

}
