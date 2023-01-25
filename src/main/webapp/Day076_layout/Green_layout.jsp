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
        /* # id를 의미, 유일한 값 / . 마침표는 class를 의미, 공통적용 */

        #scroll .row {
            height: 500px;
            background-color: #fa6b6b;
        }

        #check .row {
            height: 100px;
            background-color: #fa6b6b;
        }

        #education .r1 {
            height: 50px;
            background-color: #fad16b;
        }

        #education .r2 {
            height: 200px;
            background-color: #b3fa6b;
        }

        #education .r3 {
            height: 400px;
            background-color: #6bfad9;
        }

        #review .r1 {
            height: 250px;
            font-weight: bold;
            text-align: center;
            background-color: #6bc8fa;
        }

        #review .r2 {
            height: 250px;
            font-weight: bold;
            text-align: center;
            background-color: #6b83fa;
        }

        #review .r3 {
            height: 500px;
            font-weight: bold;
            text-align: center;
            background-color: #966bfa;
        }

        #notice .row {
            height: 80px;
            background-color: #f06bfa;
            text-align: center;
        }

        #completion .r1 {
            height: 100px;
            font-weight: bold;
            font-size: 150%;
            text-align: center;
            background-color: #fa6bc1;
        }

        #completion .r2 {
            height: 250px;
            background-color: #fcc8c8;
        }

        #sns {
            height: 150px;
            background-color: white;
            text-align: center;
            font-weight: bold;
        }

        #foot .r1 {
            height: 50px;
            background-color: #d2d2d2;
            text-align: center;
        }

        #foot .r2 {
            height: 150px;
            background-color: #b7b7b7;
        }

        /*------------*/

        #header .navbar {
            margin-bottom: 0; /* margin : 바깥쪽 여백 | padding : 안쪽여백 */
        }

        #header nav.navbar.navbar-inverse {
            color: white;
            background-color: #3370c4;
            border: 0;
        }

        #header nav.navbar.navbar-inverse.subnav {
            height: 100px;
            padding-top: 25px;
            background-color: #ffffff;
        }

        #header nav.navbar.navbar-inverse.subnav2 {
            color: #000000;
            background-color: #dedede;
        }

        .myhidden {
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
<div id="JFanel">

    <div id="header">
        <nav class="navbar navbar-inverse">
            <h2 class="myhidden">주메뉴</h2><!-- ## 추가 -->
            <div class="container">
                <div class="navbar-header col-sm-2">
                    <a class="navbar-brand" href="#">그린컴퓨터아트학원</a>
                </div>
                <ul class="nav navbar-nav col-sm-9">
                    <li class="active"><a href="#">강남</a></li>
                    <li><a href="#">종로</a></li>
                    <li><a href="#">신촌</a></li>
                    <li><a href="#">신도림</a></li>
                    <li><a href="#">안양</a></li>
                    <li><a href="#">천안</a></li>
                    <li><a href="#">청주</a></li>
                    <li><a href="#">대전</a></li>
                    <li><a href="#">전주</a></li>
                    <li><a href="#">대구</a></li>
                </ul>
            </div>
        </nav>

        <nav class="navbar navbar-inverse subnav">
            <h1 class="myhidden">메인</h1><!-- ## 추가 -->
            <div class="container">
                <div class="navbar-header col-sm-3">
                    <a class="navbar-brand" href="#">02.3481.1005</a>
                </div>
                <div class="navbar-header col-sm-6">
                    <a class="navbar-brand" href="#">그린컴퓨터아카데미</a>
                </div>
                <div class="navbar-header col-sm-3">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 로그인</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 회원가입</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 캠퍼스</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <nav class="navbar navbar-inverse subnav2">
            <div class="container">
                <ul class="nav navbar-nav col-sm-12">
                    <li class="active"><a href="#">그린소개</a></li>
                    <li><a href="#">캠퍼스</a></li>
                    <li><a href="#">교육과정</a></li>
                    <li><a href="#">커뮤니티</a></li>
                    <li><a href="#">포트폴리오</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><a href="#">취업센터</a></li>
                    <li><a href="#">상담센터</a></li>
                    <li><a href="#">NCS지원센터</a></li>
                </ul>
            </div>
        </nav>

    </div>

    <%--    <div id="JFanel1">--%>
    <%--        <div class="container">--%>
    <%--            <div class="row">1</div>--%>
    <%--            <div class="row">2</div>--%>
    <%--            <div class="row">3</div>--%>
    <%--        </div>--%>
    <%--    </div>--%>

    <div id="scroll">
        <div class="container">
            <div class="row"></div>
        </div>
    </div>

    <div id="check">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">캠퍼스행사</div><!-- end col -->
                <div class="col-sm-3">수강료조회</div><!-- end col -->
                <div class="col-sm-3">온라인상담</div><!-- end col -->
                <div class="col-sm-3">온라인결재</div><!-- end col -->
            </div>
        </div>
    </div>

    <div id="education">
        <div class="container">
            <div class="row r1">1</div>
            <div class="row r2">
                <div class="col-sm-5">배우고 싶은 교육과정</div>
                <div class="col-sm-5">검색</div>
            </div>
            <div class="row r3">
                <div class="col-sm-3">디지털아트</div>
                <div class="col-sm-3">양성과정</div>
                <div class="col-sm-3">React.js</div>
                <div class="col-sm-3">스케치업</div>
            </div>
        </div>
    </div>

    <div id="review">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row r1">수강후기</div>
                    <div class="row r2">취업후기</div>
                </div>
                <div class="col-sm-6">
                    <div class="row r3">포토폴리오</div>
                </div>
            </div>
        </div>
    </div>

    <div id="notice">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">그린스터디</div>
                <div class="col-sm-5">공지사항</div>
                <div class="col-sm-5">취헙현황</div>
            </div>
        </div>
    </div>

    <div id="completion">
        <div class="container">
            <div class="row r1">그린 수료식</div>
            <div class="row r2">
                <div class="col-sm-4">사진1</div><!-- end col -->
                <div class="col-sm-4">사진2</div><!-- end col -->
                <div class="col-sm-4">사진3</div><!-- end col -->
            </div>
        </div>
    </div>

    <div id="sns">
        <div class="container">
            <div class="row">전화 / 페이스북 / 블로그 / 카페 / 이그린바로가기</div>
        </div>
    </div>

    <div id="foot">
        <div class="container">
            <div class="row r1">제휴제안 | 이용약관 | 개인정보보호정책 | 오류신고 | 사이트맵</div><!-- end row -->
            <div class="row r2">
                <div class="col-sm-2">그린컴퓨터아카데미</div>
                <div class="col-sm-8">주소 : 서울시 강남구 역삼동</div>
                <div class="col-sm-2">상담문의 : 02.3481.1005</div>
            </div><!-- end row --></div>
    </div>

</div>
</body>
</html>