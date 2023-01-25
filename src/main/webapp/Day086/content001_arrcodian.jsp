<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Day086_Accordion.DAO" %>
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
<div class="container panel panel-danger">
    <h3 class="panel-heading">MVC</h3>
    <pre>
        1. MODEL : table / dto / dao / dbmanager
           desc userinfo;
        2. CONTROLLER
        3. view
           index.jsp -> content001_arrocian.jsp
    </pre>
    <h4>1. MODEL - TEST</h4>
    <%--    <%
        DAO dao = new DAO();
        out.println(dao.list());
    %>--%>
    <h4>2. CONTROLLER</h4>

    <h4>3. VIEW</h4>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">NO</th>
            <th scope="col">NAME</th>
            <th scope="col">PASS</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="i" items="${list}" varStatus="status">
            <tr>
                <td>${i.no}</td>
                <td>${i.name}</td>
                <td>${i.pass}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<div class="container panel panel-danger">
    <h3 class="panel-heading">ARRODIAN - BASIC</h3>

    <!-- arrocdian -->
    <div class="panel-group" id="accordion">
        <c:forEach var="i" items="${list}" varStatus="status">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse${i.no}"> ${i.no} </a>
                    </h4>
                </div>
                <div id="collapse${i.no}" class="panel-collapse collapse <c:if test="${status.first}"> in </c:if>">
                    <div class="panel-body"> ${i.name}</div>
                    <div class="panel-body"> ${i.pass}</div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>