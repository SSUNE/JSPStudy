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
        .my {
            background-color: #242424;
            color: #f5f5f5;
            margin-top: 3%;
        }

        #header {
            height: 166px;
            /*background-color: red;*/
        }

        #visual {
            height: 600px;
            background-color: #222;
        }

        #promotion .r1 {
            height: 310px;
            background-color: #444;
        }

        #promotion .r2 {
            height: 310px;
            background-color: #666;
        }

        #best {
            height: 620px;
            background-color: #888;
        }

        #recommend {
            height: 620px;
            background-color: #aaa;
        }

        #event .r1 {
            height: 340px;
            background-color: #bbb;
        }

        #event .r2 {
            height: 270px;
            background-color: #ccc;
        }

        #news .col5 {
            height: 560px;
            background-color: aliceblue;
        }

        #news .col7 {
            height: 280px;
            background-color: #ddd;
        }

        #sns {
            height: 250px;
            background-color: #eee;
        }

        #footer {
            height: 300px;
            background-color: #000;
        }

        /* ------------------------------------------------------------------ */
        ul.nav.navbar-nav.col-sm-9 {
            font-size: 90%;
            padding: 0;
        }
        /**/
        #header .navbar-inverse .navbar-nav > li > a {
            color: #9d9d9d;
            padding-right: 10px;
            padding-left: 10px;
            font-weight: bold;
        }

        #header .navbar {
            margin-bottom: 0; /* margin : ????????? ?????? | padding : ???????????? */
        }

        #header .navbar.navbar-inverse.subnav {
            background-color: #dc143c;
        }

        #header .navbar-inverse.subnav .navbar-nav>li>a {
            color: white;
            font-weight: normal;
        }

        #header .navbar-inverse {
            border: 0 none;
            border-radius: 0;
        }
        .myhidden{
            position: absolute;
            left: -9999%;
            width: 1px;
            height: 1px;
            overflow: hidden;
            font-size: 0;
            line-height: 0;
        }

    </style>
</head>
<body>
<div id="wrapper">

    <div id="header">
        <h1 class="myhidden">MYLOGO</h1> <%--##--%>
        <div class="navbar navbar-inverse">
            <div class="container">
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
            <h2 class="myhidden">?????????</h2> <%--##--%>
            <div class="container-">
                <div class="navbar-header col-sm-2">
                    <a class="navbar-brand" href="#">LG??????</a>
                </div>
                <ul class="nav navbar-nav col-sm-9">
                    <li class="active"><a href="#">LG THINK Q</a></li>
                    <li><a href="#">LG Signature</a></li>
                    <li><a href="#">LG Object Collection</a></li>
                    <li><a href="#">TV/AV</a></li>
                    <li><a href="#">PC/?????????</a></li>
                    <li><a href="#">????????????</a></li>
                    <li><a href="#">????????????</a></li>
                    <li><a href="#">?????????/????????????</a></li>
                    <li><a href="#">?????????</a></li>
                    <li><a href="#">??????/????????????</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right col-sm-1">
                    <%--<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> SEARCH</a></li>--%>
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> B2B</a></li>
                </ul>
            </div>
        </nav>

        <!-- lnb(2) -->
        <!-- lnb(2) -->
        <!-- lnb(2) -->
        <div class="navbar navbar-inverse subnav"> <!-- subnav ??????, ##nav?????? div??? -->
            <div class="container">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> ???????????????</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> ????????????</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> ????????????</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> ??????????????????</a></li>
                    <li><a href="#">?????????</a></li>
                    <li><a href="#">?????????</a></li>
                    <li><a href="#">???????????????/???????????????</a></li>
                </ul>
            </div>
        </div>

    </div> <!--  end header -->

    <div id="visual">
        <div class="container"></div>
    </div>

    <div id="promotion">
        <div class="container">
            <div class="row r1">
                <div class="col-sm-4">1</div>
                <div class="col-sm-4">2</div>
                <div class="col-sm-4">3</div>
            </div>
            <div class="row r2">
                <div class="col-sm-6">1</div>
                <div class="col-sm-6">2</div>
            </div>
        </div>
    </div>

    <div id="best">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">1</div>
                <div class="col-sm-3">2</div>
                <div class="col-sm-3">3</div>
                <div class="col-sm-3">4</div>
            </div>
        </div>
    </div><!-- end best -->

    <div id="recommend">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">1</div>
                <div class="col-sm-3">2</div>
                <div class="col-sm-3">3</div>
                <div class="col-sm-3">4</div>
            </div>
        </div>
    </div><!-- end recommend -->

    <div id="event">
        <div class="container">
            <div class="row r1">
                <div class="col-sm-7">1</div>
                <div class="col-sm-5">2</div>
            </div>
            <div class="row r2">
                <div class="col-sm-3">3</div>
                <div class="col-sm-3">4</div>
                <div class="col-sm-3">5</div>
                <div class="col-sm-3">6</div>
            </div>
        </div>
    </div>

    <div id="news">
        <div class="container">
            <div class="row">
                <div class="col-sm-5 col5">1</div>
                <div class="col-sm-7">
                    <div class="row col7">
                        <div class="col-sm-4">2</div>
                        <div class="col-sm-4">3</div>
                        <div class="col-sm-4">4</div>
                    </div>
                    <div class="row col7">
                        <div class="col-sm-4">5</div>
                        <div class="col-sm-8">6</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="sns" class="my">
        <div class="container">
            <div class="row"></div>
        </div>
    </div>

    <div id="footer" class="my">
        <div class="container">
            <div class="row">
                <div class="col-sm-7">1</div>
                <div class="col-sm-5">2</div>
            </div>
        </div>
    </div>

</div>
</body>
</html>