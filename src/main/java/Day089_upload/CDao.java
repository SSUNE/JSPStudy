package Day089_upload;

import java.sql.*;
import java.util.*;

public class CDao {

    public int create(CDto dto) {
        System.out.println(":::INSERT : ");
        Connection conn = null;
        PreparedStatement pstmt = null;
        int result = -1;
//        String sql = "insert into userinfo (no, name, age, img) values (seq_upload.nextval,?,?,?)"; //오라클버전
        String sql = "insert into userinfo (name, age, img) values (?,?,?)"; //mysql버전

        try {
            DBManager db = new DBManager();
            conn = db.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getName());
            pstmt.setInt(2, dto.getAge());
            pstmt.setString(3, dto.getImg());
            result = pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

    public ArrayList<CDto> list() {
        ArrayList<CDto> list = new ArrayList<CDto>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rset = null;
        String sql = "select * from userinfo";
        try {
            DBManager db = new DBManager();
            conn = db.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            pstmt = conn.prepareStatement(sql);
            rset = pstmt.executeQuery();
            while (rset.next()) {
                list.add(new CDto(rset.getInt("no"), rset.getString("name"), rset.getInt("age"), rset.getString("img")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rset != null) {
                try {
                    rset.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return list;
    }
}
