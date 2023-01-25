<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<%--<div class="container panel panel-info">
    <h3 class="panel-heading">ACCORDIAN - BASIC</h3>
    <pre>
      1. MODEL  : table / dto / dao / dbmanager
         userinfo 테이블 준비
      2. CONTROLLER : Content001
      3. view
      index.jsp(Content001) -> content_accordion.jsp
   </pre>
    <table class="table table-striped">
        <caption>item</caption>
        <thead>
        <tr>
            <th scope="col">NO</th>
            <th scope="col">NAME</th>
            <th scope="col">PRICE</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="dto" items="${list}">
            <tr>
                <td>${dto.no}</td>
                <td>${dto.name}</td>
                <td>${dto.age}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>--%>

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
                                ${dto.age}</p>
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




