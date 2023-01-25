<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <h3 class="panel-heading">[002] 제어문 - if</h3>
    <c:if test="1<2"><p>참이라면 실행 - 작동X</p></c:if>
    <c:if test="${1<2}"><p>참이라면 실행 - 작동O</p></c:if>

    <h3 class="panel-heading">연습문제1) if(1) : 5는 10보다 작다면 5는 10보다 작다 출력</h3>
    <c:if test="${5<10}"><p>5는 10보다 작다</p></c:if>

    <h3 class="panel-heading">연습문제2) if(2) : 만약 iftest001가 10이라먄 10출력</h3>
    <c:set var="iftest001" value="${10}"/>
    <c:if test="${iftest001==10}"><p>iftest001 == 10</p></c:if>

    <h3 class="panel-heading">연습문제3) if(3) : form</h3>
    <form action="jstl002_result.jsp" method="get">
        <fieldset>
            <legend>COLOR</legend>
            <div class="form-group">
                <label for="color"></label>
                <select type="text" name="color" id="color" class="form-control">
                    <option value="1">RED</option>
                    <option value="2">GREEN</option>
                    <option value="3">BLUE</option>
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