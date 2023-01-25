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
    <h3 class="panel-heading">WEB STANDARD - MILK - CRUD)(insert)</h3>
        <form action="milk_create.jsp" method="get">
            <fieldset>
                <legend>우유입력폼</legend>
                <div class="form-group">
                    <label for="name">우유이름</label>
                    <input type="text" id="name" name="name" class="form-control">
                </div>
                <div class="form-group">
                    <label for="price">우유값</label>
                    <input type="text" id="price" name="price" class="form-control">
                </div>
                <div class="form=group">
                    <input type="submit" id="send" name="send" value="전송" class="from-control btn btn-danger">
                </div>
            </fieldset>
        </form>
</div>
</body>
</html>

