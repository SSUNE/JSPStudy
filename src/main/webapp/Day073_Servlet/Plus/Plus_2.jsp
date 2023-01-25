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
    <h3 class="panel-heading">FORM-Plus</h3>
    <pre>
    1. 더하기 폼 열기
	다음과 같이 설정
	처리할 경로 : Servlet_Plus
	주소표시창 줄에 노출 : GET
	보관용기이름 : num1/num2
	2. 처리방식 : 전송버튼을 누르면 다음과 같이 출력
	== PLUS ==
	10 + 20 = 30
	[다시]
    </pre>
    <form method="get" action="<%=request.getContextPath()%>/Servlet_Plus">
        <fieldset>
            <legend>PLUS</legend>
            <div class="form-group">
                <label for="num1">NUM1</label>
                <input type="text" id="num1" name="num1" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="num2">NUM2</label>
                <input type="text" id="num2" name="num2" class="form-control"/>
            </div>

            <div class="form-group">
                <input type="submit" value="계산하기" class="btn btn-danger"/>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>