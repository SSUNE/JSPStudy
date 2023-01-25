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
<jsp:useBean id="userinfo" class="userBean.userinfo_DtoUserInfo"/>
<jsp:setProperty property="*" name="userinfo"/>
<div class="container panel panel-info">
    <h3 class="panel-heading">userinfo검색</h3>
    <table class="table table-striped">
        <caption>READ_VIEW</caption>
        <thead>
        <tr>
            <th scope="col">NO</th>
            <th scope="col">NAME</th>
            <th scope="col">AGE</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <jsp:getProperty property="no" name="userinfo"/>
            </td>
            <td>
                <jsp:getProperty property="name" name="userinfo"/>
            </td>
            <td>
                <jsp:getProperty property="age" name="userinfo"/>
            </td>
        </tr>
        </tbody>
    </table>
    <div class="form-group">
        <p><a href="index.jsp" class="btn btn-danger">뒤로가기</a></p>
    </div>
</div>

</body>
</html>