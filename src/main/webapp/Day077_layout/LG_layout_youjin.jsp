<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        /* # id를 의미, 유일한 값 / . 마침표는 class를 의미, 공통적용 */

        /*visual : 높이값 : 600px; 배경색 :#222;*/
        /*promotion row1: 높이값 : 310px; 배경색 :#444;*/
        /*promotion row2: 높이값 : 310px; 배경색 :#666;*/
        /*best row: 높이값 : 620px; 배경색 :#888;*/
        /*recommend row: 높이값 : 620px; 배경색 :#aaa;*/
        /*event row1: 높이값 : 340px; 배경색 :#bbb;*/
        /*event row2: 높이값 : 340px; 배경색 :#ccc;*/
        /*news .col-sm-5: 높이값 : 560px; 배경색 :#aliceblue;*/
        /*news .col-sm-7 .r1: 높이값 : 280px; 배경색 :#ddd;*/
        /*news .col-sm-7 .r2: 높이값 : 280px; 배경색 :#ccc;*/
        #header{ height:166px; /*background-color:red;*/ }
        #visual{ height:600px; background-color:#222; }
        #promotion .r1{ height:310px; background-color:#444; }
        #promotion .r2{ height:310px; background-color:#666; }

        #best .row{ height:620px; background-color:#888; }
        #recommend .row{ height:620px; background-color:#aaa; }

        #event .r1{ height:340px; background-color:#bbb; }
        #event .r2{ height:340px; background-color:#ccc; }

        #news .col-sm-5{ height:560px; background-color:aliceblue; }
        #news .col-sm-7 .r1{ height:280px; background-color:#ddd; }
        #news .col-sm-7 .r2{ height:280px; background-color:#ccc; }


        #sns { height:250px; background-color:#eee; }
        #footer { height:300px; background-color:#000; }

        ul.nav.navbar-nav.col-sm-9 { font-size: 90%; padding: 0;}
        #header   .navbar-inverse .navbar-nav>li>a { color: #9d9d9d; padding-left: 7px; padding-right: 7px; font-weight: bold; }
        #header .navbar { margin-bottom: 0; } /*margin: 바깥쪽 여백 | padding: 안쪽여백*/
        #header .navbar.navbar-inverse.subnav { background-color: crimson; }<%-- #header추가 --%>
        #header .navbar-inverse.subnav .navbar-nav>li>a { color: white; font-weight: normal; }
        #header .navbar-inverse { border: 0 none; border-radius: 0; }
        .myhidden{position:absolute; width:1px; height:1px; overflow:hidden; font-size:0; line-height:0;}

    </style>
</head>
<body>
<div id="wrapper">
    <div id="header"> <!-- https://www.w3schools.com/bootstrap/bootstrap_navbar.asp -->
        <h1 class="myhidden">MYLOGO</h1><!-- ## h1 추가 -->
        <!-- lnb(1) -->
        <!-- lnb(1) -->
        <!-- lnb(1) -->
        <div class="navbar navbar-inverse"><!-- ## nav에서 수정 주메뉴가 아니라서 div로-->
            <div class="container"><!-- container-fluid에서 수정 -->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
        </div>
        <!-- gnb -->
        <!-- gnb -->
        <!-- gnb -->

        <nav class="navbar navbar-inverse">
            <h2 class="myhidden">주메뉴</h2><!-- ## 추가 -->
            <div class="container">
                <div class="navbar-header col-sm-2">
                    <a class="navbar-brand" href="#">LG전자</a>
                </div>
                <ul class="nav navbar-nav col-sm-9">
                    <li class="active"><a href="#">LG ThinQ</a></li>
                    <li><a href="#">LG SIGNATURE</a></li>
                    <li><a href="#">LG Object Collection</a></li>
                    <li><a href="#">TV/AV</a></li>
                    <li><a href="#">PC/모니터</a></li>
                    <li><a href="#">주방가전</a></li>
                    <li><a href="#">생활가전</a></li>
                    <li><a href="#">에어컨/에어케어</a></li>
                    <li><a href="#">모바일</a></li>
                    <li><a href="#">뷰티/의료기기</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right col-sm-1">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span></a></li>
                    <li><a href="#">B2B</a></li>
                </ul>
            </div>
        </nav>
        <!-- lnb(2) -->
        <!-- lnb(2) -->
        <!-- lnb(2) -->
        <div class="navbar navbar-inverse subnav"><!-- subnav 추가, ##nav에서 div로 -->
            <div class="container"><!-- container-fluid에서 수정 -->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> 케어솔루션</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 베스트샵</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> 온라인몰</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 매장상담신청</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">멤버십</a></li>
                    <li><a href="#">고객센터/케어용품샵</a></li>
                </ul>
            </div>
        </div>

    </div><!-- end header -->
    <!--                         -->
    <!--                         -->
    <!--                         -->
    <div id="visual">
        <div class="container">
            <div class="container">
            </div>
        </div>
    </div><!-- end visual -->

    <div id="promotion">
        <div class="container">
            <div class="row r1">
                <div class="col-sm-4">줄4</div><!-- end col -->
                <div class="col-sm-4">줄4</div><!-- end col -->
                <div class="col-sm-4">줄4</div><!-- end col -->
            </div><!-- end row -->
            <div class="row r2">
                <div class="col-sm-6">줄6</div><!-- end col -->
                <div class="col-sm-6">줄6</div><!-- end col -->
            </div>
        </div><!-- end row -->
    </div><!-- end promotion -->

    <div id="best">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">줄3</div><!-- end col -->
                <div class="col-sm-3">줄3</div><!-- end col -->
                <div class="col-sm-3">줄3</div><!-- end col -->
                <div class="col-sm-3">줄3</div><!-- end col -->
            </div><!-- end row -->
        </div>
    </div><!-- end best -->

    <div id="recommend">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">줄3</div><!-- end col -->
                <div class="col-sm-3">줄3</div><!-- end col -->
                <div class="col-sm-3">줄3</div><!-- end col -->
                <div class="col-sm-3">줄3</div><!-- end col -->
            </div><!-- end row -->
        </div>
    </div><!-- end recommend -->

    <div id="event">
        <div class="container">
            <div class="row r1">
                <div class="col-sm-7">줄7</div><!-- end col -->
                <div class="col-sm-5">줄5</div><!-- end col -->
            </div><!-- end row -->
            <div class="row r2">
                <div class="col-sm-3">줄3</div><!-- end col -->
                <div class="col-sm-3">줄3</div><!-- end col -->
                <div class="col-sm-3">줄3</div><!-- end col -->
                <div class="col-sm-3">줄3</div><!-- end col -->
            </div><!-- end row -->
        </div>
    </div><!-- end event -->

    <div id="news">
        <div class="container">
            <div class="row">
                <div class="col-sm-5">줄5</div><!-- end col -->
                <div class="col-sm-7">
                    <div class="row r1">
                        <div class="col-sm-4">줄4</div><!-- end col -->
                        <div class="col-sm-4">줄4</div><!-- end col -->
                        <div class="col-sm-4">줄4</div><!-- end col -->
                    </div><!-- end row -->
                    <div class="row r2">
                        <div class="col-sm-4">줄4</div><!-- end col -->
                        <div class="col-sm-8">줄8</div><!-- end col -->
                    </div><!-- end row -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div>
    </div><!-- end news -->

    <div id="sns">
        <div class="container">
            <div class="row">
                <div class="col-sm-7">줄7</div><!-- end col -->
                <div class="col-sm-5">줄5</div><!-- end col -->
            </div><!-- end row -->
        </div>
    </div><!-- end sns -->

    <div id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-7">줄7</div><!-- end col -->
                <div class="col-sm-5">줄5</div><!-- end col -->
            </div><!-- end row -->
        </div>
    </div><!-- end footer -->
</div>
</div><!-- end wrapper -->
</body>
</html>