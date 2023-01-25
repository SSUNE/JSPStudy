<%@ page import="Day080.DBManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="Day080.JSTLItemDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">jstl+db</h3>
    <pre>
        1. table
        2. dto
        3. dbmanager
        4. dao
    </pre>
    <%
        // no4. test
        DBManager db = new DBManager();
        Connection connection = db.connection();
        if (connection != null) {
            out.println("연동성공");
        }
    %>

    <%
        // no5. test
        JSTLItemDao dao = new JSTLItemDao();
        out.println(dao.list());
    %>
    <pre>
        controller 파트
        1. 서블릿 - dao를 사용해서 데이터 가져오기 / db.jsp 파일에서 dao에서 가져온 데이터 넘겨주기
        index. jsp => (get)JSTLItemServlet =>  리스트 출력해주는 화면
        location.href="JSTLItemServlet";
    </pre>
    <%
        response.sendRedirect(request.getContextPath() + "/JSTLItemServlet");
    %>
    <pre>
        view파트
        1. db.jsp 파일에서 jstl태그사용해서 테이블 출력하기
    </pre>
</div>
</body>
</html>