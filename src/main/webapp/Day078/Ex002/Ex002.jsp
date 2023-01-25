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
    <h3 class="panel-heading">Q2. EL-OPERATOR</h3>
    <p class="well">다음화면과 같이 출력하시오</p>
    <p>\${10+3} = ${10+3}</p>
    <p>\${10-3} = ${10-3}</p>
    <p>\${10*3} = ${10*3}</p>
    <p>\${10/3} = ${10/3}</p>
    <p>\${10%3} = ${10%3}</p>
    <p>\${10==3} = ${10==3}</p>
    <p>\${10!=3} = ${10!=3}</p>
    <p>\${10>3} = ${10>3}</p>
    <p>\${10<3} = ${10<3}</p>
    <p>\${10>=3} = ${10>=3}</p>
    <p>\${10<=3} = ${10<=3}</p>
    <p>\${(10+3==13)?"ok":"not_ok"} = ${(10+3==13)?"ok":"not_ok"}</p>
</div>
</body>
</html>