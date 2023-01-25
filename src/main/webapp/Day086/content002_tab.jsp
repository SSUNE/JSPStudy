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
    <h3 class="panel-heading">TAB - BASIC</h3>
    <pre>
        https://www.w3schools.com/bootstrap/bootstrap_tabs_pills.asp
    </pre>


    <ul class="nav nav-tabs">
        <c:forEach var="i" items="${list}" varStatus="status">
            <li <c:if test="${status.first}"> class="active" </c:if> > <a data-toggle="tab" href="#menu${i.no}">${i.name}</a></li>
        </c:forEach>
    </ul>

    <div class="tab-content">
        <c:forEach var="i" items="${list}" varStatus="status">
            <div id="menu${i.no}" class="tab-pane fade <c:if test="${status.first}"> in active </c:if>">
                <p>${i.no}</p>
                <p>${i.name}</p>
                <p>${i.pass}</p>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>