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
    <h3 class="panel-heading">JS - OBJECT</h3>
    <script>
        var fruit = {'a': 'apple', 'b': 'banana', 'c': 'coconut'};
        document.write(fruit.a);
        document.write(fruit.b);
        document.write(fruit.c);
    </script>
</div>
<div class="container panel panel-info">
    <h3 class="panel-heading">JSON001</h3>
    <p><input type="button" value="JSON001" class="btn btn-danger" id="json1"/></p>
    <div class="well r1"></div>
    <script>
        $(function () {
            $("#json1").click(function () {
                $.ajax({
                    url: "JSON1.json", type: "get", dataType: "json", success: function (data) {
                        console.log(data);
                        $(".r1").append($("<p>").html(data.name)).append($("<p>").html(data.age));
                    }, error: function (xhr, textStatus, errorThrown) {
                        $(".r1").html(textStatus + "(HTTP" + xhr.status + "/" + errorThrown);
                    }
                });
            });
        });
    </script>
</div>
<div class="container panel panel-info">
    <h3 class="panel-heading">JSON002</h3>
    <p><input type="button" value="JSON002" class="btn btn-danger" id="json2"/></p>
    <div class="well r2"></div>
    <script>
        $(function () {
            $("#json2").click(function () {
                $.ajax({
                    url: "JSON2.json", type: "get", dataType: "json", success: function (data) {


                        $(".r2").append($("<p>").html(data.menu[0].name)).append($("<p>").html(data.menu[0].age));
                    }, error: function (xhr, textStatus, errorThrown) {
                        $(".r2").html(textStatus + "(HTTP" + xhr.status + "/" + errorThrown);
                    }
                });
            });
        });
    </script>
</div>
</body>
</html>