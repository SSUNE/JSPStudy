<%@page import="java.net.InetAddress" %>
<%@ page import="Day090_replay.BDAO" %>
<%@ page import="Day090_replay.BDTO" %>
<%@ page import="Day090_replay.DBManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">DBCP TEST</h3>

    <%
        DBManager dbManager = new DBManager();
        Connection connection = dbManager.connection();
        if (connection != null) {
            out.println("연동성고!");
        }
        connection.close();
    %>
</div>
<div class="container panel panel-info">
    <h3 class="panel-heading">DBCP TEST</h3>
    <%
        BDAO dao = new BDAO();
        out.println(dao.list());
    %>
    <%
        /*
        //1. bstep의 최대값구하기
        //2. 다음 bgroup / bstep 구하기 1000 → 2000 / 999 → 2000 (1000번대 원본글 삭제)
                 999     →  2 * 1000               | 998 → 2*1000
                 999/(float)1000   ,   (Math.ceil(0.999)+1)*1000
           */
        out.println("<br/><br/><br/>");

        int bgroup = -1, bstep = -1, bindent = -1, max = -1;
        BDAO dao2 = new BDAO();
        BDTO dto2 = new BDTO();
        max = dao2.create_max();
        out.println(max); //0;
        bgroup = (int) (Math.ceil(max / (float) 1000)) + 1;
        bstep = bgroup * 1000;
        bindent = 0;
        //원본글
        dto2.setBname("1");
        dto2.setBpass("1");
        dto2.setBtitle("1");
        dto2.setBcontent("1");
        dto2.setBip(InetAddress.getLocalHost().getHostName());
        dto2.setBgroup(bgroup);
        dto2.setBstep(bstep);
        dto2.setBindent(bindent);
        out.println(dao2.create(dto2));
         /*
           BGROUP      BSTEP    BINDENT
         ---------- ---------- ----------
               1        1000         0      원본글
               1        999          1      ㄴre      (0> and <999)

       * */

        // 답글용@@@
        out.println("<br/><br/><br/>");
        BDAO dao3 = new BDAO();
        BDTO dto3 = new BDTO();
        int bgroup2 = 1, bstep2 = 1000, bindent2 = 0;
        //////////////////////////////// ★ 1) 999-1 = 998
        dto3.setBstep(bstep2); //0> 다빼주세요 <1000
        out.println("reply : " + dao3.update_re1(dto3));

        dto3.setBname("1");
        dto3.setBpass("1");
        dto3.setBtitle("1");
        dto3.setBcontent("1");
        dto3.setBip(InetAddress.getLocalHost().getHostName());
        dto3.setBgroup(bgroup2);
        dto3.setBstep(bstep2 - 1);
        dto3.setBstep(bindent2 + 1);
        out.println("reply2 : " + dao3.create(dto3));

        /////////////////update_hit
        //update mvcboard5 set bhit = bhit + 1 bno = '1';
        BDAO dao4 = new BDAO();
        BDTO dto4 = new BDTO();
        dto4.setBno(64);
        out.println("UPDATE_HIT : " + dao4.update_hit(dto4));

        /////////////////read
        //upadate mvcboard5 set btitle = '1-new', bcontent='c' where bno='1' and bpass='1';
        out.println("<br/><br/><br/>");
        BDAO dao5 = new BDAO();
        BDTO dto5 = new BDTO();
        dto5.setBtitle("1-new");
        dto5.setBcontent("1-new");
        dto5.setBno(64);
        dto5.setBpass("1");
        out.println("READ : " + dao5.read(dto5));

        /////////////////update
        //update mvcboard5 set btitle = ?, bcontent=? where bno=? and bpass=?;
        out.println("<br/><br/><br/>");
        BDAO dao6 = new BDAO();
        BDTO dto6 = new BDTO();
        dto6.setBtitle("1-new-new");
        dto6.setBcontent("1-new-new");
        dto6.setBno(64);
        out.println("update : " + dao6.update(dto6));

        /////////////////delete
        // delete mvcboard5 bno='1' and bpass='1';
        out.println("<br/><br/><br/>");
        BDAO dao7 = new BDAO();
        BDTO dto7 = new BDTO();
        dto7.setBno(65);
        dto7.setBpass("1");
        out.println("delete : " + dao7.delete(dto7));

    %>
</div>
</body>
</html>