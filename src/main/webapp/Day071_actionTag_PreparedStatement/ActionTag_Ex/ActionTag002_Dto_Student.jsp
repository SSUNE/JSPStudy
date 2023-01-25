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
    <h3 class="panel-heading">JAVABEAN 002 : STUDENT</h3>
    <pre>
        1. com.company.폴더경로.DtoStudent:
           멤버변수 - DTO설정
        2. setProperty를 이용해서 설정
        3. getProperty를 이용해서 출력
    </pre>
    <jsp:useBean id="student" class="userBean.Dto_Student" scope="page"/>
    <jsp:setProperty name="student" property="name" value="홍길동"/>
    <jsp:setProperty name="student" property="age" value="10"/>
    <jsp:setProperty name="student" property="grade" value="3"/>
    <jsp:setProperty name="student" property="studentNum" value="1234"/>
    <table class="table table-striped">
        <caption>STUDENT INFO</caption>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th scope="col">이름</th>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th scope="col">나이</th>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th scope="col">학년</th>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th scope="col">번호</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
        <tbody>
        <tr>
            <th scope="row">이름</th>
            <td><jsp:getProperty name="student" property="name"/></td>
        </tr>
        <tr>
            <th scope="row">나이</th>
            <td><jsp:getProperty name="student" property="age"/></td>
        </tr>
        <tr>
            <th scope="row">학년</th>
            <td><jsp:getProperty name="student" property="grade"/></td>
        </tr>
        <tr>
            <th scope="row">번호</th>
            <td><jsp:getProperty name="student" property="studentNum"/></td>
        </tr>
        </tbody>
    </table>

    <%--        <tr>--%>
    <%--            <td>--%>
    <%--                <jsp:getProperty name="student" property="name"/>--%>
    <%--            </td>--%>
    <%--        </tr>--%>
    <%--        <tr>--%>
    <%--            <td>--%>
    <%--                <jsp:getProperty name="student" property="age"/>--%>
    <%--            </td>--%>
    <%--        </tr>--%>
    <%--        <tr>--%>
    <%--            <td>--%>
    <%--                <jsp:getProperty name="student" property="grade"/>--%>
    <%--            </td>--%>
    <%--        </tr>--%>
    <%--        <tr>--%>
    <%--            <td>--%>
    <%--                <jsp:getProperty name="student" property="studentNum"/>--%>
    <%--            </td>--%>
    <%--        </tr>--%>
</div>
</body>
</html>

