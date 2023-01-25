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
    <h3 class="panel-heading">EL+BEAN</h3>
    <pre>
         MVC
         M(MODEL) : DB(PASS) / DAO(PASS) / DTO ElCat : name , getter+setter , 생성자
         V : 고양이 입력해주는 화면(elBean.jsp) / 결과창 (elBean001_result.jsp)
         C : action = "ElCatServlet" / method = "get" (doGet) / name = "name"
            -포워딩 : 화면경로 안보이게 숨기기 request.getRequestDispatcher
      </pre>
    <form action="<%=request.getContextPath()%>/ElCatServlet" method="get">
        <fieldset>
            <legend>고양이로그인</legend>
            <div class="form-group">
                <label>CATNAME</label>
                <input type="text" name ="name" id="name" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="CATNAME" class="btn btn-danger"/>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>