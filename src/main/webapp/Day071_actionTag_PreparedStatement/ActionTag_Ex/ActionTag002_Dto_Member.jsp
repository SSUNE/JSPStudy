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
        1. com.company.폴더경로.DtoMember:
           멤버변수 - DTO설정 : userid, userpass, useremail
        2. setProperty를 이용해서 설정
        3. getProperty를 이용해서 출력
    </pre>
    <jsp:useBean id="member" class="userBean.Dto_Member" scope="page"/>
    <jsp:setProperty name="member" property="userid" value="sally"/>
    <jsp:setProperty name="member" property="userpass" value="1234"/>
    <jsp:setProperty name="member" property="useremail" value="sally@gmail.com"/>
    <table class="table table-striped">
        <caption>MEMBER INFO</caption>

        <tbody>
        <tr>
            <th scope="row">아 이 디</th>
            <td><jsp:getProperty name="member" property="userid"/></td>
        </tr>
        <tr>
            <th scope="row">비밀번호</th>
            <td><jsp:getProperty name="member" property="userpass"/></td>
        </tr>
        <tr>
            <th scope="row">이 메 일</th>
            <td><jsp:getProperty name="member" property="useremail"/></td>
        </tr>
        </tbody>
    </table>

</div>
</body>
</html>

