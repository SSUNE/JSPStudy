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
    <h3 class="panel-heading">Q1 Parma test</h3>
    <pre>
        Q1. submit버튼을 클릭하면
        - ELAdding에서는 서블릿파일
        // 0. 빈칸검사
        // 1. method(get):parameter를 이용하여 데이터를 저장 - 주소?name=값1&name2=값2&name3=값3
    </pre>
    <form action="<%=request.getContextPath()%>/ELAdding" method="get" id="elAdding">
        <fieldset>
            <legend>PLUS PROGRAM</legend>
            <div class="form-group">
                <label for="num1">숫자1</label>
                <input type="text" name="num1" id="num1" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="num2">숫자2</label>
                <input type="text" name="num2" id="num2" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="더하기연산" class="btn btn-info"/>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>