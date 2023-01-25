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
    <h3 class="panel-heading">파일 업로드 COS 라이브러리</h3>
    <form action="${pageContext.request.contextPath}/upload000.do" method="post" enctype="multipart/form-data">
        <fieldset>
            <legend>파일 업로드 001</legend>
            <div class="form-group">
                <label for="name">글쓴이</label>
                <input type="text" name="name" id="name" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" name="title" id="title" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="file">파일</label>
                <input type="file" name="file" id="file" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="전송" class="form-control"/>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>