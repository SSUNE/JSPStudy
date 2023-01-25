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
<jsp:useBean id="milk" class="userBean.Dto_Milk_2"/>
<jsp:setProperty property="name" name="milk" />
<jsp:setProperty property="price" name="milk" />
<%
    request.setCharacterEncoding("utf-8");
    if(request.getParameter("name") != null){
        out.println("<script> alert('DB연동성공'); </script>");
    } else {
        out.println("<script> alert('DB연동실폐'); location.hrdf='Dto_Milk.jsp'; </script>");
    }
%>

<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">FORM BASIC-JOIN</h3>
    <table class="table table-striped">
        <caption>JOIN INFO</caption>
        <tbody>
        <tr>
            <th scope="col">NAME</th>
            <td><jsp:getProperty name="milk" property="name"/></td>
        </tr>
        <tr>
            <th scope="col">PRICE</th>
            <td><jsp:getProperty name="milk" property="price"/></td>
        </tr>
        </tbody>
    </table>
<%--    <div class="form-group">--%>
<%--        <p><a href="milk_create.jsp" class="btn btn-danger">뒤로</a></p>--%>
<%--    </div>--%>
</div>

</body>
</html>