<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">002. SERVLET</h3>
    <pre>
         ㅁ  서블릿컨테이너
         URL : https://www.naver.com/logo.png
             -   Uniform Resource Locator(위치)

         URI : https://www.naver.com/logo
            -   Uniform Resource Identifier(식별자)
            - 자원 식별자로 접근

      @WebServlet("/경로")
      </pre>
    <p><a href="<%=request.getContextPath()%>/ServletBasic001" class="btn btn-danger">SERVLET 호출</a></p>
</div>
</body>
</html>