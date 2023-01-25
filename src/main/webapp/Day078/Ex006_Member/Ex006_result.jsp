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
<%
    if ((int) request.getAttribute("result") == 1) {
        out.println("<script>alert('멤버입력을 마무리했습니다.');</script>");
    }
%>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">표현식을 이용한 출력방법</h3>

    <table class="table table-striped">
        <caption>성적표</caption>
        <thead>
        <tr>
            <th scope="col">번호</th>
            <th scope="col">아이디</th>
            <th scope="col">비밀번호</th>
            <th scope="col">이메일</th>
        </tr>

        </thead>
        <tbody>
        <tr>
            <td>${member.getUno()}</td>
            <td>${member.getUserid()}</td>
            <td>${member.getUserpass()}</td>
            <td>${member.getUseremail()}</td>

        </tr>
        </tbody>
    </table>
</div>
</body>
</html>