<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "ko">
<head>
    <meta charset="UTF-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Insert title here</title>
</head>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading"></h3>
    <pre>
         1.세션에 이름저장   elTest, sessionTest
         2.처리파일인 : test2.jsp에서 넘겨준 name파라미터와 저장한 세션 출력
      </pre>
    <% session.setAttribute("elTest","sessionTest"); %>
    <!--              -->
    <!--              -->
    <!--              -->
    <form action="elEx003_result.jsp" method="post" id="elTest001">
        <table class="table table-striped">
            <tbody>
            <tr>
                <th scope="row">
                    <label for="name">NAME:</label></th>
                <td><input type="text" name="name" id="name"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="입력" class="btn btn-danger"/></td>
            </tr>
            </tbody>
        </table>
    </form>
    <!--              -->
    <!--              -->
    <!--              -->
    <form action="<%=request.getContextPath()%>/ElSession" method="post" id="elTest002">
        <table class="table table-striped">
            <tbody>
            <tr>
                <th scope="row">
                    <label for="name">NAME:</label></th>
                <td><input type="text" name="name" id="name"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="입력" class="btn btn-danger"/></td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>