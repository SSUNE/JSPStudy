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
<div class="container panel panel-success">
    <div class="container panel panel-heading">
    <pre>
        ## 필기 ##
        ##frontcontroller =>

      (1) el
         el (expression language)
         - 표현식을 대신해서 값을 표현하는 언어

         <%--<% out.println("hello") %>
         <%="hello"%>
         ${"hello"}--%>
    </pre>
    </div>

    <div class="container panel panel-heading">
        <h3 class="panel-heading">001.EL</h3>
        <p>JSP에서 출력에 대한 표현을 쉽게하기위해 개발한 태드그</p>
        <p>MODEL2 방식에서 표현언어를 사용함.</p>
        <p><% out.println("hello"); %></p>
        <p><%="hello" %>
        </p>
        <p>${"hello"}</p>

    </div>

    <div class="container panel panel-heading">
        <h3 class="panel-heading">002.EL 자료형</h3>
        <dl>
            <dt>1)정수형</dt>
            <dd>${10}</dd>
            <dt>2)실수형</dt>
            <dd>${3.14}</dd>
            <dt>3)문자열형</dt>
            <dd>${"abc"}</dd>
            <dt>4)문자형</dt>
            <dd>${'a'}</dd>
            <dt>5)null</dt>
            <dd>${null}</dd>
            <dt>6)논리형</dt>
            <dd>${true}</dd>
            <dt>1)크다작다</dt>
            <dd>${10>3}</dd>
        </dl>
        <!-- dl : 내가 정의 내린 리스트 (Description-List) -->
        <!-- dt : 제목 (Description-Term) -->
        <!-- dd : 내용 (Description-Description) -->
    </div>

    <div class="container panel panel-heading">
        <h3 class="panel-heading">003.Parameter</h3>
        <P><a href="el002.jsp?num=10" class="btn btn-danger"> 데이터 넘기기 </a></P>
    </div>
</div>
</body>
</html>