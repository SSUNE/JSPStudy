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
<div class="container panel panel-success">
    <h3 class="panel-heading">[003] choose</h3>
    <c:choose>
        <c:when test="${1+2==4}"><p>1+2==4 : true</p></c:when>
        <c:otherwise><p>1+2==4 : false</p></c:otherwise>
    </c:choose>

    <h3 class="panel-heading">연습문제1) choose/when/otherwise(1) : 변수 whentest001 </h3>
    <c:set var="whentest001" value="2"/>
    <c:choose>
        <c:when test="${whentest001==1}"><p>1이다</p></c:when>
        <c:when test="${whentest001==2}"><p>2이다</p></c:when>
        <c:otherwise><p>3이다</p></c:otherwise>
    </c:choose>

    <h3 class="panel-heading">연습문제2) choose/when/otherwise(2) : 변수 whentest002 </h3>
    <c:set var="whentest002" value="a"/>
    <c:choose>
        <c:when test="${whentest002 eq'a'}"><p>apple</p></c:when>
        <c:when test="${whentest002 eq'b'}"><p>banana</p></c:when>
        <c:otherwise><p>coconut</p></c:otherwise>
    </c:choose>

    <h3 class="panel-heading">연습문제3) from </h3>
    <form action="jstl003_result.jsp" method="get">
        <fieldset>
            <legend>fruit</legend>
            <div class="form-group">
                <label for="fruit"></label>
                <select type="text" name="fruit" id="fruit" class="form-control">
                    <option value="1">APPLE</option>
                    <option value="2">BANANA</option>
                    <option value="3">COCONUT</option>
                </select>
            </div>
            <div class="form-group">
                <input type="submit" value="전송" class="form-control btn btn-danger">
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>