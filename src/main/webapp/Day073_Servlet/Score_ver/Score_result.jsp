<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    request.setCharacterEncoding("utf-8");

%>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">LOGIN 결과</h3>
    <%
        request.setCharacterEncoding("UTF-8");
    %>
    <p>국어 : <%=request.getAttribute("kor")%></p>
    <p>영어 : <%=request.getAttribute("eng")%></p>
    <p>수학 : <%=request.getAttribute("math")%></p>
    <p>총점 : <%=request.getAttribute("total")%></p>
    <p>평균 : <%=request.getAttribute("avg")%></p>
    <p>통과여부 : <%=request.getAttribute("hap")%></p>
    <p>랭킹 : <%=request.getAttribute("rank")%></p>

    <p><a href="javascript:history.go(-1)" class="btn btn-danger">다시</a></p>
</div>
</body>
</html>