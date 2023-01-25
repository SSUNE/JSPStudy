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
</head>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">JSTL FOREACH + DB</h3>
    <table class="table table-striped">
        <caption>ITEMS</caption>
        <thead>
        <tr>
            <th scope="col">INO</th>
            <th scope="col">NAME</th>
            <th scope="col">PRICE</th>
            <th scope="col">DESCRIPTION</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="dto" items="${list}" varStatus="status">
            <tr>
                <td>${dto.ino}</td>
                <td>${dto.name}</td>
                <td>${dto.price}</td>
                <td>${dto.description}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>