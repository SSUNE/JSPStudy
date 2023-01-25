<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <c:set var="fruit" value=""/>
    <c:set var="btn"   value=""/>
    <c:choose>
        <c:when test="${param.fruit==1}">
            <c:set var="fruit" value="apple"/>
            <c:set var="btn"   value="danger"/>
        </c:when>
        <c:when test="${param.fruit==2}">
            <c:set var="fruit" value="banana"/>
            <c:set var="btn"   value="warning"/>
        </c:when>
        <c:when test="${param.fruit==3}">
            <c:set var="fruit" value="coconut"/>
            <c:set var="btn"   value="success"/>
        </c:when>
    </c:choose>

</head>
<body>

<div class="container panel panel-${btn }">
    <h3 class="panel-heading">[003] choose result</h3>

    <p><img src="${fruit}.jpeg" alt="${fruit}"></img></p>

    <div class="form-group">
        <p><a href="javascript:history.go(-1)" class="form-control btn btn-${btn}">뒤로가기</a></p>
    </div>

</div>
</body>
</html>