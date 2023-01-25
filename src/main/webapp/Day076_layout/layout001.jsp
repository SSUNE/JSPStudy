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
<style>.my{background-color: #3e3e3e; color: #ffffff; margin-top: 3%; }</style>
<%--        배경색                      글자색            위쪽여백            --%>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">GRID LAYOUT [1. 표(박스)] - [2:줄] - [3:칸]</h3>
    <ol>
        <li>[표(박스)] : .container,  .container-fluid</li>
        <li>[박스안의 줄] : .row</li>
        <li>[줄안의 칸] : .col-*-*</li>
    </ol>
</div>

<div class="container my">CONTAINER1</div>
<div class="container-fluid my">CONTAINER2</div>

<div class="container my">
    <div class="row">
        <h3>.row : 한 줄</h3>
    </div>
    <div class="row">
        <h3>.row : 한 줄</h3>
    </div><!-- end row 줄-->
</div> <!-- end container 표 -->

<div class="container panel panel-info">
    <div class="row">
        <h3 class="panel-heading"> .col-디바이스-칸수</h3>
        <p>ex) .col-sm-5</p>
        <p>xm(for phone) </p>
        <p>sm(for tablets) : 768px이상 </p>
        <p>md(for desktops) : 992px이상 </p>
        <p>lg(for larger desktops) : 1200px이상 </p>
        <p>칸수 - 12칸 : 12등분하여 그 중에 몇개 사용할 것 인지 지정</p>
    </div>

    <div class="row">
        <h3 class="panel-heading"> EX) </h3>
        <p>예1) .container > .row > .col-sm-10 . col-sm-2</p>
        <p>예2) .container > .row > .col-sm-5 . col-sm-5 .col-sm-2</p>
        <p>예3) .container > .row > .col-sm-4 . col-sm-4 .col-sm-4</p>
        <p>예4) .container > .row > .col-sm-3 . col-sm-3 .col-sm-3 .col-sm-3</p>
    </div>

</div>

<div class="container well">
    <div class="row">
        <div class="col-sm-10">줄10</div>
        <div class="col-sm-2">줄2</div>
    </div>
</div>

<div class="container well">
    <div class="row">
        <div class="col-sm-5">줄5</div>
        <div class="col-sm-5">줄5</div>
        <div class="col-sm-2">줄2</div>
    </div>
</div>

<div class="container well">
    <div class="row">
        <div class="col-sm-4">줄4</div>
        <div class="col-sm-4">줄4</div>
        <div class="col-sm-4">줄4</div>
    </div>
</div>

<div class="container well">
    <div class="row">
        <div class="col-sm-3">줄3</div>
        <div class="col-sm-3">줄3</div>
        <div class="col-sm-3">줄3</div>
        <div class="col-sm-3">줄3</div>
    </div>
</div>

</body>
</html>