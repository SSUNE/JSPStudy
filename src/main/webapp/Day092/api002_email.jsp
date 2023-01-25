<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="container panel panel-warning">
    <h3 class="panel-heading">메일 api</h3>
    <pre>
   https://ckeditor.com/ckeditor-4/download/
   </pre>
    <script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
    <script>
        $(function () {
            CKEDITOR.replace('content');
        })
    </script>
    <form action="${pageContext.request.contextPath}/Mail" method="post">
        <fieldset>
            <legend>관리자에게 문의메일보내기</legend>
            <table class="table table-striped">
                <caption>궁금하신사항이 있으면 메일보내주세요!</caption>
                <tbody>
                <tr>
                    <th scope="row"><label for="subject">title</label></th>
                    <td><input type="text" id="subject" name="subject" placeholder="제목을 적어주세요" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="content">내용</label></th>
                    <td><textarea id="content" name="content" placeholder="내용을 적어주세요." class="form-control"></textarea>
                    </td>
                </tr>

                <tr>
                    <td colspan="2"><input type="submit" value="전송" class="btn btn-warning"/></td>
                </tr>
                </tbody>

            </table>
        </fieldset>
    </form>
</div>
<script>
    $(document).ready(function () {
        CKEDITOR.replace('content');

        $("#submit").on("click", function () {
            console.log($("#title").val());
            console.log(CKEDITOR.instances.content.getData());
            $.ajax({
                url: "sendmail",
                type: "get",
                data: {title: $("#title").val(), content: CKEDITOR.instances.content.getData()},
                success: function (data) {
                    if (data == 1) {
                        alert('메일 발송에 성공 했습니다.');
                        location.href = "index"
                    } else {
                        alert('메일 발송에 실패 했습니다.');
                        history.go(-1);
                        console.log(data);
                    }
                }
            })
        })
    });

</script>
</body>
</html>