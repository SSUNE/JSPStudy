<%@page import="Day082.BDTO" %>
<%@page import="Day082.BDao" %>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
    <h3 class="panel-heading">Front Controller - TEST</h3>

    <%

        //1. server.xml Context 리소스 찾기
        Context initContext = new InitialContext();

        //2. 환경설정
        Context envContext = (Context) initContext.lookup("java:/comp/env");

        //3. dataSource 설정
        DataSource db = (DataSource) envContext.lookup("jdbc/myoracle"); // <res-ref-name>jdbc/myoracle</res-ref-name>

        //4. connection 얻어오기
        Connection conn = db.getConnection();
        if (conn != null) {
            out.println("DBCP연동성공!");
        }

    %>

    <h3 class="panel-heading">2. DAO TEST</h3>

    <%
        //1. public ArrayList<BDTO> listAll()
        BDao dao = new BDao();
        out.println("2-1. listAll() : " + dao.listAll() + "<br/>");


        //2. public int create(BDTO dto)
        //bname, bpass, btitle, bcontent
//        BDTO dto = new BDTO();
//        dto.setBname("first");
//        dto.setBpass("1111");
//        dto.setBtitle("title");
//        dto.setBcontent("content");
//        out.println("2-2. create(dto) : " + dao.create(dto) + "<br/>");

        //3. public int update_hit(BDTO dto)
        BDTO dto_no = new BDTO();
        dto_no.setBno(3);
        out.println("2-3. update_hit(dto) : " + dao.update_hit(dto_no) + "<br/>");

        //4. public BDTO read(BDTO dto)
        // bno
        BDTO dto_no2 = new BDTO();
        dto_no2.setBno(3);
        out.println("2-4. read(dto) : " + dao.read(dto_no2) + "<br/>");

        //5. public int update(BDTO dto)
        // "update mvcboard3 set btitle=?, bcontent=? where bno=? and bpass=?";
        BDTO dto_no3 = new BDTO();
        dto_no3.setBtitle("title_new");
        dto_no3.setBcontent("bcontent_new");
        dto_no3.setBno(3);
        dto_no3.setBpass("1111");
        out.println("2-5. update(dto) : " + dao.update(dto_no3) + "<br/>");

        //6. public int delete(BDTO dto)
        BDTO dto_no4 = new BDTO();
        dto_no4.setBno(3);
        dto_no4.setBpass("1111");
        out.println("2-6. delete(dto) : " + dao.delete(dto_no4) + "<br/>");
    %>
    <h3 class="panel-heading">3. frontcontroller</h3>
    <%
        response.sendRedirect(request.getContextPath() + "/list.do");
    %>

</div>

</body>
</html>