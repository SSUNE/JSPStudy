<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    <h3 class="panel-heading">EL+BEAN001-ver1</h3>
    <form action="<%=request.getContextPath()%>/ELJoinInfoServlet" method="get">
        <fieldset>
            <legend>JOININFO-EL연습(get)</legend>
            <div class="form-group">
                <label for="stdno">STDNO</label>
                <input type="text" id="stdno" name="stdno" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="name">NAME</label>
                <input type="text" id="name" name="name" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="age">AGE</label>
                <input type="text" id="age" name="age" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="grade">GRADE</label>
                <input type="text" id="grade" name="grade" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="STDINFO" class="btn btn-danger"/>
                <input type="reset" value="다시작성" class="btn btn-success"/>
            </div>
        </fieldset>
    </form>
</div>
<div class="container panel panel-info">
    <h3 class="panel-heading">EL+BEAN001-ver2(db연동 post)</h3>
    <form action="<%=request.getContextPath()%>/ELJoinInfoServlet" method="post">
        <fieldset>
            <legend>JOININFO-EL연습(post)</legend>

            <div class="form-group">
                <label for="name">NAME</label>
                <input type="text" id="name" name="name" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="age">AGE</label>
                <input type="text" id="age" name="age" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="grade">GRADE</label>
                <input type="text" id="grade" name="grade" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="STDINFO" class="btn btn-danger"/>
                <input type="reset" value="다시작성" class="btn btn-success"/>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>