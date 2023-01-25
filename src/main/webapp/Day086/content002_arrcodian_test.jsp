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


<div class="container panel panel-info">
    <h3 class="panel-heading">ACCORDION - BASIC</h3>
    <pre>
         https://www.w3schools.com/bootstrap/bootstrap_ref_js_modal.asp
         Toggleable / Dynamic Tabs
    </pre>
    <!-- Trigger the modal with a button -->
    <c:forEach var="dto" items="${list}">
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#${dto.no}">${dto.name}</button>
    </c:forEach>

    <!-- Modal -->
    <c:forEach var="dto" items="${list}">

        <div id="${dto.no}" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">${dto.name}</h4>
                    </div>
                    <div class="modal-body">
                        <p>${dto.name} <br/>
                                ${dto.pass}</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>