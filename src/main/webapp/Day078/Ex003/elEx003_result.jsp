<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "ko">
<head>
    <meta charset="UTF-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Insert title here</title>
</head>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">1.스트릿 트립 이용법</h3>
    <p>session : <%=session.getAttribute("elTest")%></p>
    <p>parameter : <%=request.getParameter("name")%></p>
    <!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
</div>
<div class="container panel panel-info">
    <h3 class="panel-heading">2.el 이용법</h3>
    <pre>
         1. pageScope : page객체를 참조하는 객체
         2. requestScope : request 객체를 참조하는 객체
         3. sessionScope : session 객체를 참조하는 객체
         4. applicationScope : application 객체를 참조하는 객체

         param : 요청파라미터
         paramValues : 요청파라미터(배열)을 참조하는 객체
         cookie : cookie객체를 참조하는 객체
      </pre>
    <p>session : ${sessionScope.elTest}</p>
    <p>parameter : ${param.name}</p>
    <!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
</div>
</body>
</html>