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
    <h3 class="panel-heading">[2] AJAX : id double</h3>
    <pre>
        SQL > desc userinfo;
    </pre>
    <div class="form-group row">
        <div class="col-sm-1"><label for="name"><strong class="required">(*)</strong>아이디</label></div>
        <div class="col-sm-3">
            <input type="text" name="name" id="name" class="form-control" placeholder="아이디는 영문, 숫자 4~15자리">
        </div>
        <div class="col-sm-2">
            <input type="button" value="중복확인" class="btn btn-info" id="idtest">
        </div>
        <div class="col-sm-6" id="iddouble"><p class="jungbok">아이디 중복여부확인하셔야합니다.</p>
            <script>
                $(function () {
                    $("#idtest").click(function () {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/ServletSearch",
                            type: "get",
                            dataType: "text",
                            data: {"jung": $("#name").val()},
                            success: function (data) {
                                $(".jungbok").html(data);},
                            error: function (xhr, textStatus, errorThrown) {
                                $(".jungbok").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown);
                            }
                        });
                    });
                });
            </script>
        </div>
    </div>
</div>
</body>
</html>