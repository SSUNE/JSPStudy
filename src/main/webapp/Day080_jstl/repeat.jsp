<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="container panel panel-success">

    <h3 class="panel-heading">연습문제1) 변수이름을 msg로 지정 / msg에 hello 데이터 넣기 출력 </h3>
    <c:set var="msg" value="hello"/>
    <c:out value="msg"/>
    <c:out value="${msg}"/>

    <h3 class="panel-heading">연습문제2) if(1) : 5는 10보다 작다면 5는 10보다 작다 출력</h3>
    <c:if test="${5<10}"><p>5는 10보다 작다</p></c:if>

    <h3 class="panel-heading">연습문제3) choose/when/otherwise : 변수 whentest001 </h3>
    <c:set var="whentest001" value="2"/>
    <c:choose>
        <c:when test="${whentest001==1}"><p>1이다</p></c:when>
        <c:when test="${whentest001==2}"><p>2이다</p></c:when>
        <c:otherwise><p>3이다</p></c:otherwise>
    </c:choose>

</div>
</body>
</html>