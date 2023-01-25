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
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">다음 API</h3>
    <div class="form-group">
        <div class="row">
            <div class="col-sm-4">
                <input type="text" id="zonecode" title="우편번호" placeholder="우편번호" class="form-control"/>
            </div>
            <div class="col-sm-8">
                <input type="button" value="우편번호찾기" id="postcode" class="btn btn-info">
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-sm-6">
                <input type="text" id="address1" title="상세주소1" placeholder="주소" class="form-control"/>
            </div>
            <div class="col-sm-6">
                <input type="text" id="address2" title="상세주소2" placeholder="상세주소" class="form-control"/>
            </div>
        </div>
    </div>
</div>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    $(function () {
        $("#postcode").click(function () {
            alert("우편번호 검색입니다.");
            new daum.Postcode({
                oncomplete: function (data) {
                    $("#zonecode").value(data.zonecode);
                    $("#address1").value(data.roadAddress);
                    $("#address2").focus();
                }
            }).open();
        });
    });
</script>
</body>
</html>