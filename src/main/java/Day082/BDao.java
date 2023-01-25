package Day082;


import java.net.InetAddress;
import java.sql.*;
import java.util.ArrayList;

public class BDao {

    public ArrayList<BDTO> listAll() {

        ArrayList<BDTO> list = new ArrayList<BDTO>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rset = null;

        String sql = "select * from mvcboard3 order by bno desc";

        try {
            DBManager db = new DBManager();
            conn = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {

            pstmt = conn.prepareStatement(sql);
            rset = pstmt.executeQuery(); //표

            while (rset.next()) { //줄
                list.add(new BDTO(rset.getInt("bno"),
                        rset.getString("bname"),
                        rset.getString("bpass"),
                        rset.getString("btitle"),
                        rset.getString("bcontent"),
                        rset.getString("bdate"),
                        rset.getInt("bhit"),
                        rset.getString("bip")));
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
    }// list

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////

    public int create(BDTO dto) {

        int result = -1;
        Connection conn = null;
        PreparedStatement pstmt = null;

        String sql = "insert into mvcboard3(bno, bname, bpass, btitle, bcontent, bip) values (seq_board3.nextval,?,?,?,?,?)";

        try {
            DBManager db = new DBManager();
            conn = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getBname());
            pstmt.setString(2, dto.getBpass());
            pstmt.setString(3, dto.getBtitle());
            pstmt.setString(4, dto.getBcontent());
            pstmt.setString(5, InetAddress.getLocalHost().getHostAddress());

            result = pstmt.executeUpdate(); //표

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

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////

    public int update_hit(BDTO dto) {

        int result = -1;
        Connection conn = null;
        PreparedStatement pstmt = null;

        String sql = "update mvcboard3 set bhit=bhit+1 where bno=?";

        try {
            DBManager db = new DBManager();
            conn = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, dto.getBno());

            result = pstmt.executeUpdate();//표

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

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////

    public BDTO read(BDTO dto) {

        BDTO result = new BDTO();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rset = null;

        String sql = "select * from mvcboard3 where bno=?";

        try {
            DBManager db = new DBManager();
            conn = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, dto.getBno());

            rset = pstmt.executeQuery(); //표

            while (rset.next()) {
                result = new BDTO(rset.getInt("bno"),
                        rset.getString("bname"),
                        rset.getString("bpass"),
                        rset.getString("btitle"),
                        rset.getString("bcontent"),
                        rset.getString("bdate"),
                        rset.getInt("bhit"),
                        rset.getString("bip"));
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

        return result;

    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////

    public int update(BDTO dto) {

        int result = -1;
        Connection conn = null;
        PreparedStatement pstmt = null;

        String sql = "update mvcboard3 set btitle=?, bcontent=? where bno=? and bpass=?";

        try {
            DBManager db = new DBManager();
            conn = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getBtitle());
            pstmt.setString(2, dto.getBcontent());
            pstmt.setInt(3, dto.getBno());
            pstmt.setString(4, dto.getBpass());

            result = pstmt.executeUpdate(); //표

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

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////

    public int delete(BDTO dto) {

        int result = -1;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rset = null;

        String sql = "delete from mvcboard3 where bno=? and bpass=?";

        try {
            DBManager db = new DBManager();
            conn = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, dto.getBno());
            pstmt.setString(2, dto.getBpass());

            result = pstmt.executeUpdate(); //표

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

        return result;

    }

} // class BDao