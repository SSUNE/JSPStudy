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
    <h3 class="panel-heading">Action Tag</h3>
    <pre>
        #ActionTag
    - jsp페이지에서 자바코드 분리
    - 사용자에게 보여지는 프로젠테이션(view)부분과
      사용자의 요청을 기다리는 비지니스로직(controller - 프로그램)을 분리하는 것이 가능

      ◼︎ 페이지 흐름제어 (forward/include)
      ◼ 자바빈 사용 (useBean)

      1. 코드 양 줄이기
      2. 가독성 높임

      jsp:include 페이지 삽입 - 모듈화
      jsp:forward 다른사이트 이동시 주소가 안 바뀜
      jsp:param 파라미터 던지기
      jsp:useBean 빈 생성, 사용(dto)
      jsp:setProperty 빈 속성값 할당
      jsp:getProperty 빈 속성 값 가져오기
    </pre>

    <h3 class="panel-heading">Q1. 다음과 같이 파일을 만들고 페이지를 삽입하시오.</h3>
    <pre>jsp:include page="ActionTag001_ex.jsp"</pre>
    <jsp:include page="ActionTag001_ex.jsp"/>

    <h3 class="panel-heading">Q2. 아래코드를 action 태그로 바꾸시오.</h3>
    <pre>actionTag02_ex</pre>
    <jsp:forward page="ActionTag002_ex.jsp">
        <jsp:param name="id" value="test"/>
        <jsp:param name="pass" value="1234"/>
    </jsp:forward>
</div>
</body>
</html>