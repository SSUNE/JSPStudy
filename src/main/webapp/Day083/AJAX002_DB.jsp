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
    <h3 class="panel-heading">AJAX - DB</h3>
    <div class="panel-body">
        <p><input type="button" value="DB연동확인" id="db" class="btn btn-info"/></p>
        <p class="result dbb"></p>
    </div>
    <script>
        $(function (){
           $("#db").click(function (){
               $.ajax({
                   url : "${pageContext.request.contextPath}/Ajax_001",
                   type : "get",
                   dataType : "text",
                   data : {"test":"abc"},
                   success : function (data){
                       console.log(data);
                       $(".dbb").html(data);},
                   error : function (xhr,textStatus,errorThrown){
                       $(".dbb").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown);
                   }
               })
           });
        });
    </script>
    <div class="container panel panel-info">
        <table class="table table-striped db1">
            <thead>
                <tr><th scope="col">NO</th><th scope="col">NAME</th><th scope="col">PRICE</th></tr>
            </thead>
            <tbody></tbody>
        </table>
        <script>
            $(function (){
               $.ajax({
                  url : "${pageContext.request.contextPath}/Ajax_003",
                   type : "get",
                   dataType : "text",
                   success : function (data){$(".db1 tbody").html(data);},
                   error : function (xhr, textStatus, errorThrown){
                      $(".db1 tbody").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown);
                   }
               });
            });
        </script>
    </div>
    <div class="well re">
        <p><input type="text" id="s" name="s" class="form-group"/>
       <input type="button" value="검색" id="ch" name="ch" class="btn btn-info"/></p>
        <script>
            $(function (){
                $("#ch").click(function (){
                    $.ajax({
                    url : "${pageContext.request.contextPath}/Ajax_004",
                    type : "get",
                    dataType : "text",
                    data : {"se":$("#s").val()},
                    success : function (data){$(".r7").html(data);},
                    error : function (xhr,textStatus,errorThrown){$(".r7").html(textStatus + "(HTTP-" + xhr.status + "/" + errorThrown);}
             });
            });
            });
        </script>
    </div>
    <div class="well r7">

    </div>
</div>
</body>
</html>
