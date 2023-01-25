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
    <style>
        #ex {
            background-color: red;
            height: 200px;
            width: 200px;
            color: white;
            font-size: 200%;
            font-weight: bold;
            text-align: center;
            margin-top: 150px;
            padding-top: 20px;
            border: 5px solid black;
        }
    </style>
</head>
<body>
<div class="container panel panel-warning">
    <h3 class="panel-heading">CSS 정리</h3>
    <ol>
        <li>배경색 : background-color</li>
        <li>높이값 : height</li>
        <li>가로사이즈 : width</li>
        <li>글자색 : color</li>
        <li>글자사이즈 : font-size</li>
        <li>글자굵기 : font-weight : bold(굵게) / normal : (보통)</li>
        <li>중앙정렬 : text-align</li>
        <li>바깥쪽 여백 : margin-left (왼쪽여백) / right, top, bottom</li>
        <li>안쪽 여백 : padding-left (왼쪽여백) / right, top, bottom</li>
        <li>선 :  border: 5px solid black (굵기, 선, 색상)</li>
    </ol>
    <div id="ex">TERGET</div>
</div>
</body>
</html>