<%@ page import="java.sql.*" %>
<%@ include file="../inc/dbconnect.jsp" %>

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
<div class="container panel panel-success">
    <h3 class="panel-heading">TABLE</h3>
    <fieldset>
        <legend> USERINFO - table</legend>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">NO</th>
                <th scope="col">NAME</th>
                <th scope="col">AGE</th>
                <th scope="col">EMAIL</th>
            </tr>
            </thead>
            <tbody>
            <%
                request.setCharacterEncoding("UTF-8");

                PreparedStatement preparedStatement = null;
                ResultSet resultSet = null;

                String no = request.getParameter("no");

                try {
                    preparedStatement = connection.prepareStatement("select * from userinfo2 where no=?");
                    preparedStatement.setString(1, no);
                    resultSet = preparedStatement.executeQuery();

                    if (resultSet.next()) {
                        out.println("<tr><td>" + resultSet.getString(1) + "</td><td>"
                                + resultSet.getString(2) + "</td><td>"
                                + resultSet.getString(3) + "</td><td>"
                                + resultSet.getString(4) + "</td></tr>");
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
        <div class="form-group">
            <p><a href="index.jsp" class="btn btn-danger">뒤로</a> </p>
        </div>
    </fieldset>
</div>
</body>
</html>