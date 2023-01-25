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
    <h3 class="panel-heading">PARAMETER</h3>
    <p><%=request.getParameter("num1")%> + <%=request.getParameter("num2")%> = <%=Integer.parseInt(request.getParameter("num1")) + Integer.parseInt(request.getParameter("num2"))%></p>
    <p>${param.num1} + ${param.num2} = ${param.num1 + param.num2}</p>
    <p>${param.num1} + ${param.num2} = ${requestScope.total}</p>
    <p><a href="../Ex001/Ex001.jsp" class="btn btn-danger">다시</a></p>
</div>
</body>
</html>