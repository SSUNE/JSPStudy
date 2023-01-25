<%@page import="Day078.ELJoinIno" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<%
    int result = (int) request.getAttribute("result");
    if (result == 1) {
        out.println("<script>alert('등록되었습니다.'); </script>");
    }
%>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">출력값</h3>
    <p>NAME : ${member.getName()}</p>
    <p>AGE : ${member.getAge()}</p>
    <p>GRADE : ${member.getGrade()}</p>

</div>
</body>
</html>