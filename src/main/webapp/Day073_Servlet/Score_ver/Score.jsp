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
    <h3 class="panel-heading">FORM BASIC-SCORE</h3>
    <pre>
    1. 성적처리폼열기
	다음과 같이 설정
	처리할 경로 : Servlet_Score
	주소표시창 줄에 노출 : X
	보관용기이름 : kor/eng/maht
	2. 처리방식 : 전송버튼을 누르면 다음과 같이 출력

	[다시]
    </pre>
    <form action="<%=request.getContextPath()%>/Servlet_Score" method="post" id="score">
        <fieldset>
            <legend>SCORE</legend>
            <div class="form-group">
                <label for="kor">국어</label>
                <input type="text" id="kor" name="kor" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="eng">영어</label>
                <input type="text" id="eng" name="eng" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="math">수학</label>
                <input type="text" id="math" name="math" class="form-control"/>
            </div>
            <div class="text text-right">
                <input type="submit" value="성적계산하기" class="btn btn-success"/>
            </div>
        </fieldset>
    </form>
</div>

</body>
</html>