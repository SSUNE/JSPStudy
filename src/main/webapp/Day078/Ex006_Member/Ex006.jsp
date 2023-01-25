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
    <h3 class="panel-heading">EL+BEAN001-ver1</h3>
    <form action="<%=request.getContextPath()%>/ELmemberServlet" method="get">
        <fieldset>
            <legend>MEMBERINFO(GET)</legend>
            <div class="form-group">
                <label for="uno">UNO</label>
                <input type="text" id="uno" name="uno" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="mid">ID</label>
                <input type="text" id="mid" name="mid" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="mpass">PASS</label>
                <input type="text" id="mpass" name="mpass" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="memail">EMAIL</label>
                <input type="text" id="memail" name="memail" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="MEMBERINFO" class="btn btn-danger"/>
                <input type="reset" value="다시작성" class="btn btn-success"/>
            </div>
        </fieldset>
    </form>

</div>
<div class="container panel panel-info">
    <h3 class="panel-heading">EL+BEAN001-ver2</h3>
    <form action="<%=request.getContextPath()%>/ELmemberServlet" method="post">
        <fieldset>
            <legend>MEMBERINFO(GET)</legend>
            <div class="form-group">
                <label for="mid2">ID</label>
                <input type="text" id="mid2" name="mid2" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="mpass2">PASS</label>
                <input type="text" id="mpass2" name="mpass2" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="memail">EMAIL</label>
                <input type="text" id="memail2" name="memail2" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="MEMBERINFO" class="btn btn-danger"/>
                <input type="reset" value="다시작성" class="btn btn-success"/>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>