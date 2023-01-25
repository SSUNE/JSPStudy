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
        <h3 class="panel-heading">[1] AJAX</h3>
        <ol>
            <li>서버에 데이터를 요청</li>
            <li>데이터 형식으로 결과를 재조성 (text,xml,json)</li>
            <li>[화면변화없이] 재조성한 데이터를 돌려받음</li>
        </ol>
    </div>
    <div class="container panel panel-info">
        <h3 class="panel-heading">[ex1] #text1 버튼을 클릭하면, r1영역에 본인이름출력</h3>
        <pre>
            1. /data/text1.txt
            홍길동

            2.ajax이용해서 버튼클릭시 .r1영역에 본인이름 출력

        </pre>
        <p><input type="button" value="text1" id="text1" class="btn btn-success"></p>
        <div class="well r1"></div>
        <script>
            $(function (){
                $("#text1").click(function (){
                    $.ajax({
                        url: "${pageContext.request.contextPath}/Day083/text1.txt" ,
                        type : "get" ,
                        dataType : "text",
                        success : function (text){$(".r1").html(text);},
                        error : function (xhr,textStatus,errorThrown){
                            $(".r1").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown);
                        }
                    });
                });
            });
        </script>
    </div>
    <div class="container panel panel-info">
        <h3 class="panel-heading">[ex2] #text2 버튼을 클릭하면, r1영역에 text2.txt파일 불러오기</h3>
        <pre>
            1. /data/text2.txt


            2.ajax이용해서 버튼클릭시 .r2에 위의 파일 출력

        </pre>
        <p><input type="button" value="text2" id="text2" class="btn btn-success"></p>
        <div class="well r2"></div>
        <script>
            $(function (){
                $("#text2").click(function (){
                    $.ajax({
                        url: "${pageContext.request.contextPath}/Day083/text2.txt" ,
                        type : "get" ,
                        dataType : "text",
                        success : function (text){$(".r2").html(text);},
                        error : function (xhr,textStatus,errorThrown){
                            $(".r2").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown);
                        }
                    });
                });
            });
        </script>
    </div>
    <div class="container panel panel-info">
        <h3 class="panel-heading">[ex3] #text2 버튼을 클릭하면, r1영역에 text2.txt파일 불러오기</h3>
        <pre>
            1. /data/text2.txt


            2.ajax이용해서 버튼클릭시 .r2에 위의 파일 출력

        </pre>
        <p><input type="button" value="text3" id="text3" class="btn btn-success"></p>
        <div class="well r3"></div>
        <script>
            $(function (){
                $("#text3").click(function (){
                    $.ajax({
                        url: "${pageContext.request.contextPath}/Day083/text3.txt" ,
                        type : "get" ,
                        dataType : "text",
                        success : function (text){
                            var data = text.split("/");
                            $(".r3  .a1_1").html(data[0]);
                            $(".r3  .a1_2").html(data[1]);
                            $(".r3  .a1_3").html(data[2]);
                            $(".r3  .a1_4").html(data[3]);

                            },
                        error : function (xhr,textStatus,errorThrown){
                            $(".r3").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown);
                        }
                    });
                });
            });
        </script>
    </div>
    <div class="container panel panel-info">
        <h3 class="panel-heading">[ex5] #text5 버튼을 클릭하면, r5영역에 text5.txt파일 불러오기</h3>
        <pre>
            1. /data/text5.txt


            2.ajax이용해서 버튼클릭시 .r5에 위의 파일 출력

        </pre>
        <div class="penel-body">
        <p><input type="button" value="text5" id="text5" class="btn btn-success"></p>
        <div class="well r5">
            <table class="table table-striped table-hover">
                <caption>어벤저스 멤버들</caption>
            <colgroup>
                <col style="width: 20%"/><col style="width: 20%"/>
                <col style="width: 35%"/><col style="width: 25%"/>
            </colgroup>
                <thead>
                <tr>
                    <th scope="col">NAME</th>
                    <th scope="col">AGE</th>
                    <th scope="col">ADDRESS</th>
                    <th scope="col">MOBILE</th>
                </tr>
                </thead>
                <tbody>
        <script>
            $(function (){
                $("#text5").click(function (){
                    $.ajax({
                        url: "${pageContext.request.contextPath}/Day083/text5.txt" ,
                        type : "get" ,
                        dataType : "text",
                        success : function (text){

                            var rowarr = text.split("\n");
                            for(var a = 0; a < rowarr.length; a++) {
                                var colarr = rowarr[a].split("/");

                                var tr = $("<tr>");

                                var td1 = $("<td>").html(colarr[0]);
                                var td2 = $("<td>").html(colarr[1]);
                                var td3 = $("<td>").html(colarr[2]);
                                var td4 = $("<td>").html(colarr[3]);
                                var td5 = $("</td>");
                                tr.append(td1).append(td2).append(td3).append(td4);
                                $(".r5 tbody").append(tr);

                            }
                        },
                        error : function (xhr,textStatus,errorThrown){
                            $(".r5").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown);
                        }
                    });
                });
            });
        </script>

                </tbody>
            </table>
        </div>
        </div>
    </div>
<div class="container panel panel-info">
    <h3>동적태그 만들기 - 붙이기 / 갱신</h3>
    <p><input type="button" value="태그만들기+갱신" id="d1" class="btn btn-danger"/></p>
    <p><input type="button" value="태그만들기+붙이기" id="d2" class="btn btn-info"/></p>
    <div class="well ex result"></div>
    <script>
        $(function (){
           $("#d1").click(function (){
              var p = $("<p>").html("내용덮기");
              $(".ex.result").html(p);
           });
            $("#d2").click(function (){
                var p = $("<p>").append("내용추가");
                $(".ex.result").append(p);
            });
        });
    </script>
</div>
</body>
</html>
