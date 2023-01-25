<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
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
    <h3 class="panel-heading">Statement</h3>
    <table class="table table-striped">
        <caption>EMP TABLE-STATEMENT</caption>
        <thead>
        <tr>
            <th scope="col">EMPNO</th>
            <th scope="col">EMAME</th>
            <th scope="col">JOB</th>
        </tr>
        </thead>
        <tbody>
        <%
            String sql = "select * from emp where ename='SCOTT'"; //테이블구문으로 만들어주세요!

            Statement statement = null;
            ResultSet resultSet = null;
            try {
                statement = connection.createStatement();
                //표 / 줄 / 칸
                resultSet = statement.executeQuery(sql); //표
                while (resultSet.next()) {//줄
                    out.println("<tr><td>" + resultSet.getInt("empno") + "</td><td>"
                            + resultSet.getString("ename") + "</td><td>"
                            + resultSet.getString("job") + "</td><td>"
                            + resultSet.getString("mgr") + "</td><td>"
                            + resultSet.getString("hiredate") + "</td><td>"
                            + resultSet.getString("sal") + "</td><td>"
                            + resultSet.getString("comm") + "</td><td>"
                            + resultSet.getInt("deptno") + "</td></tr>"); //칸
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
        </tbody>
    </table>

    <h3 class="panel-heading"> PreparedStatement</h3>
    <table class="table table-striped">
        <caption>EMP TABLE-STATEMENT</caption>
        <thead>
        <tr>
            <th scope="col">EMPNO</th>
            <th scope="col">EMAME</th>
            <th scope="col">JOB</th>
        </tr>
        </thead>
        <tbody>
        <%
            PreparedStatement preparedStatement = null;
            connection = null;
            resultSet = null;

            //String sql2 = "select * from emp where ename=?";
            try {
                preparedStatement = connection.prepareStatement("select * from emp where ename=?");
                preparedStatement.setString(1, "SCOTT");
                resultSet = preparedStatement.executeQuery(); //표
                while (resultSet.next()) { //줄
                    out.println("<tr><td>" + resultSet.getInt("empno") + "</td><td>"
                            + resultSet.getString("ename") + "</td><td>"
                            + resultSet.getString("job") + "</td><td>"
                            + resultSet.getString("mgr") + "</td><td>"
                            + resultSet.getString("hiredate") + "</td><td>"
                            + resultSet.getString("sal") + "</td><td>"
                            + resultSet.getString("comm") + "</td><td>"
                            + resultSet.getInt("deptno") + "</td></tr>"); //칸
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
        %>
        </tbody>
    </table>
</div>
</body>
</html>