package Day090_replay;

import java.net.InetAddress;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BDAO {

    //    ㅁ 전체글가져오기 :  원본글은 최신순으로 (BINDENT) , LRE:(BINDENT)  오름차순
    //      select * from mvcboard5 order by dstep desc, bindent asc;
    //      테스트용 :  select bgroup, bstep, bindent from mvcboard5 order by bstep desc, bindent asc;
    public ArrayList<BDTO> list() {
        ArrayList<BDTO> list = new ArrayList<BDTO>();

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            DBManager db = new DBManager();
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {

            preparedStatement = connection.prepareStatement("select * from mvcboard5 order by bstep desc, bindent asc;");
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                list.add(new BDTO(resultSet.getInt("bno"),
                        resultSet.getString("bname"),
                        resultSet.getString("bpass"),
                        resultSet.getString("btitle"),
                        resultSet.getString("bcontent"),
                        resultSet.getString("bdate"),
                        resultSet.getInt("bhit"),
                        resultSet.getString("bip"),
                        resultSet.getInt("bgroup"),
                        resultSet.getInt("bstep"),
                        resultSet.getInt("bindent")));

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


    //    ㅁ 글쓰기       :  이름, 비번, 제목, 내용을 사용자에게 입력받아 입력한다.
    //      insert into mvcboard5 (bno, bname, bpass, btitle, bcontent, bip, bgroup, bstep, bindent) values (seq_mvcboard5.nextval, '1','1','1','1','1', 1, 1000, 0);
    public int create(BDTO dto) {
        int result = -1;
        String sql = " insert into mvcboard5 (bname, bpass, btitle, bcontent, bip, bgroup, bstep, bindent) "
                + " values (?,?,?,?,?,?,?,?)";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            DBManager db = new DBManager();
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, dto.getBname());
            preparedStatement.setString(2, dto.getBpass());
            preparedStatement.setString(3, dto.getBtitle());
            preparedStatement.setString(4, dto.getBcontent());
            preparedStatement.setString(5, InetAddress.getLocalHost().getHostName());
            preparedStatement.setInt(6, dto.getBgroup());
            preparedStatement.setInt(7, dto.getBstep());
            preparedStatement.setInt(8, dto.getBindent());

            result = preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //if(rset !=null) {try{rset.close();}catch(Exception e) {e.printStackTrace();}}
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

        return result;
    }

    //      select max(bstep) from mvcboard5;
    public int create_max () {

        String sql = "select max(bstep) from mvcboard5";
        int result = -1;

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            DBManager db = new DBManager();
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                result = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return result;
    }

    //    ㅁ 상세보기      : 해당글번호의 데이터를 가져온다.
    //      select * from mvcboard5 where bno=1;
    public BDTO read(BDTO dto) {
        BDTO result = new BDTO();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            DBManager db = new DBManager();
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {

            preparedStatement = connection.prepareStatement("select * from mvcboard5 where bno=?");
            preparedStatement.setInt(1, dto.getBno());
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                result = new BDTO(
                        resultSet.getInt("bno"),
                        resultSet.getString("bname"),
                        resultSet.getString("bpass"),
                        resultSet.getString("btitle"),
                        resultSet.getString("bcontent"),
                        resultSet.getString("bdate"),
                        resultSet.getInt("bhit"),
                        resultSet.getString("bip"),
                        resultSet.getInt("bgroup"),
                        resultSet.getInt("bstep"),
                        resultSet.getInt("bindent"));

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
        return result;
    }

    //      히트 수 올리기
    public int update_hit(BDTO dto) {
        int result = -1;

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            DBManager db = new DBManager();
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {

            preparedStatement = connection.prepareStatement("update mvcboard5 set bhit = bhit+1 where bno=?");
            preparedStatement.setInt(1, dto.getBno());
            result = preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //if(rset !=null) {try{rset.close();}catch(Exception e) {e.printStackTrace();}}
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
        return result;
    }


    //    ㅁ 수정         : 비번, 제목, 내용을 사용자이게 입력받아 비번이 맞으면 수정한다.
    //      update mvcboard5 set btitle='1-new' , bcontent = '1-new' where bno ='1' and bpass='1';
    public int update(BDTO dto) {
        int result = -1;

        String sql = " update mvcboard5 set btitle= ? , bcontent = ? where bno =? and bpass=?";
        Connection connectiononn = null;
        PreparedStatement preparedStatement = null;
        try {
            DBManager db = new DBManager();
            connectiononn = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {

            preparedStatement = connectiononn.prepareStatement(sql);

            preparedStatement.setString(1, dto.getBtitle());
            preparedStatement.setString(2, dto.getBcontent());
            preparedStatement.setInt(3, dto.getBno());
            preparedStatement.setString(4, dto.getBpass());
            result = preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //if(rset !=null) {try{rset.close();}catch(Exception e) {e.printStackTrace();}}
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (connectiononn != null) {
                try {
                    connectiononn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

        }

        return result;
    }

    //    ㅁ 답변달기(1)      :  기존의 번호들 숫자 1개씩 빼기
    //      update mvcboard5 set bstep = bstep-1 where bstep > 0 and bstep < 1000;
    public int update_re1(BDTO dto) {
        int result = -1;
        String sql = "update mvcboard5 set bstep = bstep-1 where bstep > ? and bstep < ?";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            DBManager db = new DBManager();
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            // 원본글일경우 : 이전 0> and <1000
            // ㄴre      : 이전 0> and <999
            // 1번원본글      1000 = 0 / 999 = 0
            // 2번원본글      2000 = 1000 / 1999 = 1000    1999/1000 => 1.999 => 2 => 2*1000 -1000

            int curr = dto.getBstep();
            int prev = (int) (Math.ceil(dto.getBstep() / (float) 1000) * 1000 - 1000);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, prev);
            preparedStatement.setInt(2, curr);

            result = preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //if(rset !=null) {try{rset.close();}catch(Exception e) {e.printStackTrace();}}
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
        return result;
    }

    //    ㅁ 답변달기(2)      :  사용자에게 이름, 비번, 제목, 내용을 입력받아 답변글이 달린다.
    //      insert into mvcboard5 (bno, bname, bpass, btitle, bcontent, bip, bgroup, bstep, bindent)
    //      values (seq_mvcboard5.nextval, '11', '11', 'ㄴre', 'ㄴre', '1', 1, 999, 1);
    public int update_re2(BDTO dto) {
        int result = -1;
        String sql = " insert into mvcboard5 (bname, bpass, btitle, bcontent, bip, bgroup, bstep, bindent) "
                + " values (?,?,?,?,?,?, ?, ?)";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            DBManager db = new DBManager();
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {

            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, dto.getBname());
            preparedStatement.setString(2, dto.getBpass());
            preparedStatement.setString(3, dto.getBtitle());
            preparedStatement.setString(4, dto.getBcontent());
            preparedStatement.setString(5, InetAddress.getLocalHost().getHostName());
            preparedStatement.setInt(6, dto.getBgroup());
            preparedStatement.setInt(7, dto.getBstep() - 1);
            preparedStatement.setInt(8, dto.getBindent() + 1);

            result = preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //if(rset !=null) {try{rset.close();}catch(Exception e) {e.printStackTrace();}}
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
        return result;
    }

    //    ㅁ 삭제         : 비번을 입력받아  비번이 맞으면 삭제한다.
    //      delete mvcboard5 where bno='1' and bpass='1';
    public int delete(BDTO dto) {
        int result = -1;
        String sql = "delete from mvcboard5 where bno=? and bpass=?";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            DBManager db = new DBManager();
            connection = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {

            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, dto.getBno());
            preparedStatement.setString(2, dto.getBpass());
            result = preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //if(rset !=null) {try{rset.close();}catch(Exception e) {e.printStackTrace();}}
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
        return result;
    }
}
