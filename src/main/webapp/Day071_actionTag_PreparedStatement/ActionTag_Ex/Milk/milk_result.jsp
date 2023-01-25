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
    <h3 class="panel heading">JAVABEAN : milk</h3>
    <table class="table table-striped">
        <caption>javaBean</caption>
        <tbody>
        <tr>
            <th scope="row">이름</th>
            <td><%=request.getParameter("name")%></td>
        </tr>
        <tr>
            <th scope="row">가격</th>
            <td><%=request.getParameter("price")%></td
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>