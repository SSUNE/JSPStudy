<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="dbconnect.jsp" %>
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
    <h3 class="panel-heading">Statement</h3>

        <%
            Statement statement = null;

            String sql = "insert into emp(empno, ename, job) values (1111, 'first', 'student')";

            try {
                if(connection != null){
                    out.println("1. 연동성공");
                }
                statement = connection.createStatement();
                int result = statement.executeUpdate(sql);
                out.println("2. 처리된 실행 줄 수 : " + result);

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (statement != null) {
                    try {
                        statement.close();
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
        %>

    <h3 class="panel-heading">PreparedStatement</h3>

    <%
        PreparedStatement preparedStatement = null;

        String sql2 = "insert into emp(empno, ename, job) values (?, ?, ?)";

        try {
            if(connection != null){
                out.println("1. 연동성공");
            }
            preparedStatement = connection.prepareStatement(sql2);
            preparedStatement.setInt(1,2222);
            preparedStatement.setString(2,"second");
            preparedStatement.setString(3,"student");

            int result = preparedStatement.executeUpdate();
            out.println("2. 처리된 실행 줄 수 : " + result);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
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
    %>

</div>
</body>
</html>