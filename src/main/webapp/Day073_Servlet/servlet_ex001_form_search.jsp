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
    <h3 class="panel-heading">004. SERVLET - BASIC</h3>
    <pre>
      1. 처리 컨테이너 : Servlet_Search
      2. 처리방식 : post - forward 방식을 이용하여 검색 OK 검색어 출력
      3. 보관용기 : query
        OK! 검색어입력한것
      </pre>


    <form action="servlet_ex001.jsp" method="get" action="<%=request.getContextPath() %>/Servlet_search">
        <fieldset>
            <legend>MY SERVER - GET 검색</legend>

            <div class="form-group">
                <label for="search2">검색</label>
                <input type="text" name="query" id="search2" class="form-control" placeholder="검색" />
            </div>

            <div class="form-group">
                <input type="submit" name="전송"  class="btn btn-danger" />
            </div>

        </fieldset>
    </form>
</div>

<div class="container panel panel-info">
    <h3 class="panel-heading">004. SERVLET - BASIC</h3>
    <pre>
      1. 처리 컨테이너 : Servlet_Search
      2. 처리방식 : post - forward 방식을 이용하여 검색 OK 검색어 출력
      3. 보관용기 : query
        OK! 검색어입력한것
      </pre>

    <form action="servlet_ex001.jsp" method="post" action="<%=request.getContextPath() %>/Servlet_search">
        <fieldset>
            <legend>MY SERVER - POST 검색</legend>

            <div class="form-group">
                <label for="search">검색</label>
                <input type="text" name="query" id="search" class="form-control" placeholder="검색" />
            </div>

            <div class="form-group">
                <input type="submit" name="전송"  class="btn btn-danger" />
            </div>

        </fieldset>
    </form>
</div>
</body>
</html>