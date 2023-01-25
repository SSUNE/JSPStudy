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
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">003. SERVLET - GET</h3>
    <p><a href="<%=request.getContextPath()%>/SLIFE1" class="btn btn-danger">GET1</a></p>

    <form method="get" action="<%=request.getContextPath()%>/SLIFE1">
        <input type="submit" class="btn btn-info" value="GET2">
    </form>

    <h3 class="panel-heading">004. SETVLET - POST</h3>
    <form method="post" action="<%=request.getContextPath()%>/SLIFE1">
        <input type="submit" class="btn btn-success" value="POST">
    </form>
</div>
</body>
</html>