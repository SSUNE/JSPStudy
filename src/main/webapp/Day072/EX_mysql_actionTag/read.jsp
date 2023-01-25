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
<%
    request.setCharacterEncoding("utf-8");
    int no = Integer.parseInt(request.getParameter("no"));
    int no2 = 0, age = 0;
    String name = "";

    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    String sql = "select * from userinfo where no=?";
    try {
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1, no);
        resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            no2 = resultSet.getInt("no");
            name = resultSet.getString("name");
            age = resultSet.getInt("age");
        }
%>
<jsp:forward page="read_view.jsp">
    <jsp:param value="<%=no %>" name="no"/>
    <jsp:param value="<%=name %>" name="name"/>
    <jsp:param value="<%=age %>" name="age"/>
</jsp:forward>
<%
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
</body>
</html>