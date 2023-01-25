<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <c:set var="color" value=""/>
    <c:set var="btn" value=""/>
    <c:if test="${param.color==1}">
        <c:set var="color" value="RED"/>
        <c:set var="btn" value="dnager"/>
    </c:if>
    <c:if test="${param.color==2}">
        <c:set var="color" value="GREEN"/>
        <c:set var="btn" value="success"/>
    </c:if>
    <c:if test="${param.color==3}">
        <c:set var="color" value="BLUE"/>
        <c:set var="btn" value="primary"/>
    </c:if>

    <style>
        #test {
            color: ${color};
            text-align: center;
            font-size: 400%;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container panel panel-danger">
    <h3 class="panel-heading">COLOR</h3>
    <p id="test">${color}</p>
    <p><a href="javascript:history.go(-1)" class="form-control btn btn-${btn}">뒤로</a></p>
</div>

</body>
</html>