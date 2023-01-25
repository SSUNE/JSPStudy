<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <h3 class="panel-heading">Q3. EL-Test : 세션설정 key:elTest - value:sessionTest</h3>
    <pre>
         1. 세션에 이름저장 elTest, sessionTest
         2. 처리파일인 : test2.jsp 에서 넘겨준 name 파리미터와, 저장한세션 출력
      </pre>
    <form action="Ex003_result.jsp" method="get" id="form">
        <fieldset>
            <legend></legend>
            <div class="form-group">
                <label for="name">NAME:</label>
                <input type="text" id="name" name="name"/>
            </div>
            <div class="form-group">
                <input type="submit" id="btn" name="btn" class="btn btn-danger" value="입력"/>
            </div>
        </fieldset>
    </form>
    <%
        String name = (String)session.getAttribute("name");
        //out.println("<p>session\t:"+session+"</p>");
        out.println("<p>name\t:"+name+"</p>");
    %>
    <p>parameter : ${sessionScope.name}</p>
</div>
</body>
</html>