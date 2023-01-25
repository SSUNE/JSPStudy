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
</head>
<body>

<div class="container panel panel-info">
    <h3 class="panel-heading">아작스</h3>
    <ol>
        <li>서버에 요청</li>
        <li>요청한 데이터(csv, xml, json) 재조성</li>
        <li>요청한 데이터 일부분 바꾸기</li>
        <li>데이터 요청이 비동기 처리됨(다른 작업이 가능함)</li>
    </ol>
</div>
<!--                 -->
<!--                 -->
<!--                 -->

<div class="container panel panel-info">
    <h3 class="panel-heading">아작스-xml(1)</h3>
    <pre>#xml 버튼을 클릭하면 xml 형식의 파일 읽어들이기</pre>
    <p class="panel-body">
        XML [ extensible markup language ]
        w3c에서 개발 된, 다른 특수한 목적을 갖는 마크업 언어를 만드는 데 사용하도록 권장하는 다목적 마크업 언어.
    </p>
    <p><input type="button" value="xml1" id="xml1" class="btn btn-info"></p>
    <div class="panel-body r1"></div>
    <script>
        $(function () {
            $("#xml1").click(function () {
                $.ajax({
                    url: "${pageContext.request.contextPath}/data/xml0.xml", //#1 여기서 전송한 게 성곻아면
                    type: "get",
                    dataType: "xml",
                    success: function (data) {

                        //1. 데이터 추출 : find 태그찾기 + text 문자열 추출
                        var name = $(data).find("name").text();
                        var price = $(data).find("price").text();

                        //2. 추출한 데이터 html 동적요소 만들기
                        name = $("<p>").html(name);
                        price = $("<p>").html(price);

                        //3. 보여줄 영역에 데이터 삽입
                        $(".r1").append(name).append(price);
                    },
                    error: function (xml, textStatus, errotThrown) {
                        $(".r1").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown + ")");
                    }
                });
            }); //end click
        }); // end ready
    </script>
</div>
<!--                 -->
<!--                 -->
<!--                 -->

<div class="container panel panel-info">
    <h3 class="panel-heading">아작스-xml(2)</h3>
    <p><input type="button" value="xml2" id="xml2" class="btn btn-info"/></p>
    <div class="panel-body r2">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">NAME</th>
                <th scope="col">YEAR</th>
                <th scope="col">IMG</th>
                <th scope="col">CHARACTER</th>
            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
    <script>
        $(function () {
            $("#xml2").click(function () {
                $.ajax({
                    url: "${pageContext.request.contextPath}/data/xml2.xml",
                    type: "get",
                    dataType: "xml",
                    success: function (xml) {

                        var name = $(xml).find("name").text();
                        var year = $(xml).find("year").text();
                        var img = $(xml).find("img").text();
                        var character = $(xml).find("character").text();

                        var tr = $("<tr>");
                        var name = $("<td>").html(name);
                        var year = $("<td>").html(year);
                        var img = $("<td>").html("<img src='images/" + img + "' alt=' ' />");
                        var character = $("<td>").html(character);
                        tr.append(name).append(year).append(img).append(character);
                        $(".r2 tbody").html(tr);
                    },
                    error: function (xml, textStatus, errorThrown) {
                        $(".r2 tbody").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown + ")");
                    }
                });
            });
        });
    </script>
</div>
<!--                 -->
<!--                 -->
<!--                 -->

<div class="container panel panel-info">
    <h3 class="panel-heading">아작스-xml(3)</h3>
    <p><input type="button" value="xml3" id="xml3" class="btn btn-info"></p>
    <div class="panel-body r3">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">NAME</th>
                <th scope="col">YEAR</th>
                <th scope="col">IMG</th>
                <th scope="col">CHARACTER</th>
            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
    <script>
        $(function () {
            $("#xml3").click(function () {
                $.ajax({
                    url: "${pageContext.request.contextPath}/data/xml3.xml",
                    type: "get",
                    dataType: "xml",
                    success: function (xml) {

                        var menus = $(xml).find("menu");
                        for (var i = 0; i < menus.length; i++) {

                            var name = $(menus[i]).find("name").text();
                            var year = $(menus[i]).find("year").text();
                            var img = $(menus[i]).find("img").text();
                            var character = $(menus[i]).find("character").text();

                            var tr = $("<tr>");
                            var name = $("<td>").html(name);
                            var year = $("<td>").html(year);
                            var img = $("<td>").html("<img src='images/" + img + "' alt=' ' />");
                            var character = $("<td>").html(character);

                            tr.append(name).append(year).append(img).append(character);
                            $(".r3 tbody").append(tr);

                        }//for
                    },
                    error: function (xml, textStatus, errorThrown) {
                        $(".r3 tbody").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown + ")");
                    }
                });
            });
        });
    </script>

</div>
<!--                 -->
<!--                 -->
<!--                 -->

<div class="container panel panel-info">
    <h3 class="panel-heading">아작스-xml(4)</h3>
    <select id="userlist" title="select 에서 데이터 chage시 xml 형식의 파일 읽어들이기" name="">
        <option value="default">[필수] 타입선택</option>
        <option value="1">캡틴아메리카</option>
        <option value="2">헐크</option>
        <option value="3">아이언맨</option>
    </select>
    <div class="panel-body r4">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">NAME</th>
                <th scope="col">YEAR</th>
                <th scope="col">IMG</th>
                <th scope="col">CHARACTER</th>
            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
    <script>
        $(function () {
            $("#userlist").change(function () {
                console.log($(this).val());
                console.log(typeof ($(this).val()));
                console.log(Number($(this).val()) - 1);
                console.log($("#userlist option").index($("#userlist option:selected")));

                if ($(this).val() == "default") {
                    alter("빈칸입니다.\n확인해주세요.");
                    return false;
                } else {
                    var index = Number($(this).val()) - 1;
                    $.ajax({
                        url: "${pageContext.request.contextPath}/data/xml3.xml",
                        type: "get",
                        dataType: "xml",
                        success: function (xml) {
                            var menu = $(xml).find("menu");
                            var mydata = $(menu[index]);

                            //////////////////////////////////////////////////////////

                            $(".r4 tbody").html(
                                $("<tr>").append($("<td>").html("<img src='images/" + mydata.find("img").text() + "' alt= ' ' />"))
                                    .append($("<td>").html(mydata.find("name").text()))
                                    .append($("<td>").html(mydata.find("year").text()))
                                    .append($("<td>").html(mydata.find("character").text()))
                            );
                        },
                        error: function (xml, textStatus, errorThrown) {
                            $(".r4 tbody").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown + ")");
                        }
                    });
                }

            });
        });
    </script>
</div>

<div class="container panel panel-info">
    <h3 class="panel-heading">004. AJAX : db연동</h3>
    <div class="dbconn"></div>
    <script>
        $(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/Ajax_xml000",
                type: "get",
                dataType: "xml",
                success: function (data) {
                    console.log(data);
                    $(".dbconn").html($(data).find("result").text());
                }, error: function (xhr, textStatus, errorThrown) {
                    $(".dbconn").html(textStatus + "(http-) " + xhr.status + "/" + errorThrown);
                }
            });
        });
    </script>
</div>
<!--                 -->
<!--                 -->
<!--                 -->

<div class="container panel panel-info">
    <h3 class="panel-heading">005. AJAX : db연동</h3>

</div>
</body>
</html>