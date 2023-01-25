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
    <h3 class="panel-heading">007. Object</h3>
    <pre>
            -json
            JSON(제이슨, JavaScript Object Notation)은
            속성-값 쌍(attribute-value pairs and array data types (or any other serializable value))
            또는 "키-값 쌍"으로 이루어진 데이터 오브젝트를 전달하기 위해... 위키백과
            - 키를 줄게 값을 다오
    </pre>
    <script>
        var animal = {"dog" : "개", "cat" : "고양이", "pig" : "돼지"};
        console.log(typeof (animal));
        console.log(animal.dog);
    </script>
    <pre>
    1. object 명이 fruits 만들기
    2. 키 a : 값apple , 키 b: 값banana  , 키 c : 값coconut
    3. for구문이용해서 apple, banana, coconut 출력하기
    </pre>
    <script>
        var fruits ={"a" : "apple", "b" : "banana","c" : "coconut"}
        var num = ["a", "b", "c"];
        for(var i = 0; i<num.length; i++){
            console.log(fruits[num[i]])};
    </script>

    <h4>EX002</h4>
    <pre>
   1. color 객체 만들기 color
   2. 객체안에 btn-danger, btn-success,btn-primary, btn-info 색상넣기
      var color = {"btn1":"red" , "btn2" : "green", "btn3":"blue", btn4 : "gold"}
   </pre>
    <script>
        $("h4").css("color","white");
        $("h4").css("backgroundColor","skyblue");

        var color = {"btn1" : "red", "btn2" : "green", "btn3" : "blue", "btn4" : "gold"}
        $(function () {
            $('#btn1').click(function () {
                $(this).css("backgroundColor", color.btn1);
            });
            $('#btn2').click(function () {
                $(this).css("backgroundColor", color.btn2);
            });
            $('#btn3').click(function () {
                $(this).css("backgroundColor", color.btn3);
            });
            $('#btn4').click(function () {
                $(this).css("backgroundColor", color.btn4);
            });
        })
    </script>
    <div>
        <input type="button" value="btn-danger" id="btn1" class="btn btn-default"/>
        <input type="button" value="btn-success" id="btn2" class="btn btn-default"/>
        <input type="button" value="btn-primary" id="btn3" class="btn btn-default"/>
        <input type="button" value="btn-info" id="btn4" class="btn btn-default"/>
    </div>
</div>
</body>
</html>