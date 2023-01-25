<%@ page import="Day073_java.JavaTest" %>
<%@ page import="Day073_java.DBManager" %>
<%@ page import="java.sql.Connection" %>
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
    <h3 class="panel-heading">001. JAVA</h3>
    <%
        JavaTest a = new JavaTest(10, 20);
        out.println(a.add()); //q1) 10+20=30  출력되게 만들어주세요
    %>

    <h3 class="panel-heading">002. JAVA-oracle (DBMANAGER)</h3>
    <pre>oracle 연동이 가능하게 DBManager를 만들어주세요!</pre>
    <%
        Connection connection = null;
        try {
            DBManager db = new DBManager();
            connection = db.connection();
            if (connection != null) {
                out.println("연동성공");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

    %>
</div>
</body>
</html>