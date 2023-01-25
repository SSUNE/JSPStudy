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
    <h3 class="panel-heading">FORM-LOGIN</h3>
    <pre>
        1. 로그인 폼 열기
		다음과 같이 설정
		처리할 경로 : Servlet_Login
		주소표시창 줄에 노출 : x
		보관용기이름 : email/pass
		2. 처리방식 : 전송버튼을 누르면 다음과 같이 출력
		== LOGIN ==
		EMAIL: first@gmail.com
		PASS: 1111
		[다시]
    </pre>
    <p class="text-center"> <img src="login.png" class="text-center" alt="로그인 그림" class="avatar"> </p>
    <form method="post" action="<%=request.getContextPath()%>/Servlet_Login">
        <fieldset>
            <legend>LOGIN</legend>
            <div class="form-group">
                <label for = "email">EMAIL</label>
                <input type="text" id="email" name="email" class="form-control"/>
            </div>
            <div class="form-group">
                <label for = "pass">PASSWORD</label>
                <input type="password" id="pass" name="pass" class="form-control"/>
            </div>
            <div class="form-group">
                <label	for="remember">REMEMBER</label>
                <input type="checkbox" id="remember" name="remember" />
            </div>
            <div class="form-group">
                <input type="submit" value="검색" class="btn btn-danger"/>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>