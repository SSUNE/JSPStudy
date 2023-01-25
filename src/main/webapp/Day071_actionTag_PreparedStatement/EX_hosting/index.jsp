<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
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
<div class="container panel panel-success">
    <h3 class="panel-heading">USERINFO - table</h3>
    <fieldset>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">NO</th>
                <th scope="col">NAME</th>
                <th scope="col">AGE</th>
                <th scope="col">EMAIL</th>
            </tr>
            </thead>
            <%
                request.setCharacterEncoding("UTF-8");

                Statement statement = null;
                ResultSet resultSet = null;

                try {
                    statement = connection.createStatement();
                    resultSet = statement.executeQuery("select * from userinfo ");

                    while (resultSet.next()) {
                        out.println("<tr><td>" + resultSet.getString(1) + "</td><td>"
                                + resultSet.getString(2) + "</td><td>"
                                + resultSet.getString(3) + "</td><td>"
                                + resultSet.getString(4) + "</td></tr>");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (resultSet != null) {
                        try {
                            resultSet.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (statement != null) {
                        try {
                            statement.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (connection != null) {
                        try {
                            connection.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            %>
            </tbody>
        </table>
    </fieldset>
</div>

<div class="container panel panel-success">
    <h3 class="panel-heading">001. userinfo 사용자에게 입력받아 데이터 삽입</h3>
    <pre>
        1-1. 처리컴포넌트 : create.jsp
        1-2. 처리방식 : post
        1-3. 처리화면 : 입력성공알림창! / 관리자에게 문의바랍니다. 알림창 - 처음페이지로 돌아옴.
        [다시]
    </pre>
    <form action="create.jsp" id="create" method="post">
        <fieldset>
            <legend>유저이름</legend>

            <div class="form-group">
                <label for="name">사용자 이름 입력</label>
                <input type="text" id="name" name="name" class="form-control">
            </div>

            <div class="form-group">
                <label for="age">사용자 나이 입력</label>
                <input type="text" id="age" name="age" class="form-control">
            </div>

            <div class="form-group">
                <label for="email">사용자 이메일 입력</label>
                <input type="text" id="email" name="email" class="form-control">
            </div>

            <div class="form-group">
            <input type="submit" id="send" name="send" value="전송" class="btn btn-danger">
            </div>
        </fieldset>
    </form>

    <h3 class="panel-heading">002. userinfo 사용자에게 no를 입력받아 검색</h3>
    <pre>
        1-1. 처리컴포넌트 : resd.jsp
        1-2. 처리방식 : get
        1-3. 처리화면 : pstmt001_search.jsp
        [예]
        --------------------
        no     name     age
        --------------------
        1      aaa      11
        --------------------
        [다시]
    </pre>
    <form action="read.jsp" id="read" method="post">
        <fieldset>
            <legend>유저검색</legend>

            <div class="form-group">
                <label for="no">사용자 번호 입력</label>
                <input type="text" id="no" name="no" class="form-control">
            </div>

            <div class="form-group">
                <input type="submit" id="send2" name="send2" value="전송" class="btn btn-danger">
            </div>
        </fieldset>
    </form>

    <h3 class="panel-heading">003. userinfo 사용자에게 번호, 나이 입력받아 데이터 수정</h3>
    <pre>
        1-1. 처리컴포넌트 : update.jsp
        1-2. 처리방식 : post
        1-3. 처리화면 : 수정성공알림창! / 관리자에게 문의바랍니다. 알림창 - 처음페이지로 돌아옴.
        [다시]
    </pre>
    <form action="update.jsp" id="update" method="post">
        <fieldset>
            <legend>유저수정</legend>

            <div class="form-group">
                <label for="no2">사용자 번호 입력</label>
                <input type="text" id="no2" name="no2" class="form-control">
            </div>

            <div class="form-group">
                <label for="name2">사용자 이름 입력</label>
                <input type="text" id="name2" name="name2" class="form-control">
            </div>

            <div class="form-group">
                <label for="age2">사용자 나이 입력</label>
                <input type="text" id="age2" name="age2" class="form-control">
            </div>

            <div class="form-group">
                <input type="submit" id="send3" name="send" value="전송" class="btn btn-danger">
            </div>
        </fieldset>
    </form>

    <h3 class="panel-heading">004. userinfo 사용자에게 번호 입력받아 데이터 삭제</h3>
    <pre>
        1-1. 처리컴포넌트 : delete.jsp
        1-2. 처리방식 : get
        1-3. 처리화면 : 삭제성공알림창! / 관리자에게 문의바랍니다. 알림창 - 처음페이지로 돌아옴.
        [다시]
    </pre>
    <form action="delete.jsp" id="delete" method="post">
        <fieldset>
            <legend>유저삭제</legend>

            <div class="form-group">
                <label for="no3">사용자 번호 입력</label>
                <input type="text" id="no3" name="no3" class="form-control">
            </div>

            <div class="form-group">
                <input type="submit" id="send4" name="send" value="전송" class="btn btn-danger">
            </div>
        </fieldset>
    </form>
</div>
<script>
    $(document).ready(function () {
        $("#create").submit(function () {
            if ($("#name").val() == "") {
                alert('이름을 입력하세요');
                return false;
            }
            if ($("#age").val() == "") {
                alert('나이를 입력하세요');
                return false;
            }
            if ($("#email").val() == "") {
                alert('이메일을 입력하세요');
                return false;
            }
        })
        $("#read").submit(function () {
            if ($("#no").val() == "") {
                alert('번호를 입력하세요');
                return false;
            }
        })
        $("#update").submit(function () {
            if ($("#no2").val() == "") {
                alert('번호를 입력하세요');
                return false;
            }
            if ($("#name2").val() == "") {
                alert('이름을 입력하세요');
                return false;
            }
            if ($("#age2").val() == "") {
                alert('나이를 입력하세요');
                return false;
            }
        })
        $("#delete").submit(function () {
            if ($("#no3").val() == "") {
                alert('번호를 입력하세요');
                return false;
            }
        })
    })
</script>
</body>
</html>