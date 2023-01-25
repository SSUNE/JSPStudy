<%@ page import="Day084_Paging.Paging.JSTLItemDao" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="container panel panel-info">
    <h3 class="panel-heading">PAGING</h3>
    <table class="table table-striped table-hover">
        <CAPTION>ITEM</CAPTION>
        <thead>
        <tr>
            <th scope="col">INO</th>
            <th scope="col">NAME</th>
            <th scope="col">PRICE</th>
            <th scope="col">DESCRIPTION</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="dto" items="${paginglist}" varStatus="status">
            <tr>
                <td>${dto.ino}</td>
                <td>${dto.name}</td>
                <td>${dto.price}</td>
                <td>${dto.description}</td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="5" class="text-center">
                <ul class="pagination">
                    <c:if test="${start>=bottomlist}">
                        <li>
                            <a href="${pageContext.request.contextPath}/JSTLItemPagingServlet?pstartno=${(start-2)*onpagerlimit}">이전</a>
                        </li>
                    </c:if>
                    <c:forEach var="i" begin="${start }" end="${end }" step="1" varStatus="status">
                        <li>
                            <a href="${pageContext.request.contextPath}/JSTLItemPagingServlet?pstartno=${(i-1)*onepagelimit}">${i}</a>
                        </li>
                    </c:forEach>
                    <c:if test="${pageAll>end}">
                        <li>
                            <a href="${pageContext.request.contextPath}/JSTLItemPagingServlet?pstartno=${(end)*onpagerlimit}">다음</a>
                        </li>
                    </c:if>
                </ul>
        </tr>
        </tfoot>
    </table>

    <!-- pagination -->


    <div class="panel-body">
        1. 전체게시판(레코드) 개수 : ${pageTotal} <br/>
        2. 한페이지당 보여주는(레코드) 개수 : ${onepagelimit} <br/>
        3. 전체페이지 : ${pageAll} <br/>
        4. db에서 가져올 번호 : ${pstartno} <br/>
        5. 하단페이지네비 : ${bottomlist} <br/>
        6. 현재페이지번호 : ${current} <br/>
        7. 시작버튼 : ${start} <br/>
        8. 마지막버튼 : ${end} <br/>
        9. db에서 가져온 데이터 10개 paginglist : ${paginglist} <br/>
    </div>
</div>
<div class="container panel panel-info">
    <h3 class="panel-heading">PAGING</h3>

    <h3>dao test</h3>
    <%
        JSTLItemDao dao = new JSTLItemDao();
        out.println("1.전체페이지 갯수 : " + dao.listcnt());
        out.println("2.전체페이지 갯수 최신 디비 0 : 1~10 :  " + dao.listAll(0) + "<br/><br/>");
        out.println("3.전체페이지 갯수 최신 디비 1 : 11~20 :  " + dao.listAll(10) + "<br/><br/>");
    %>

    <%--<table class="table table-striped table-hover">
        <caption>ITEMS</caption>
        <thead>
        <tr>
            <th scope="col">INO</th>
            <th scope="col">NAME</th>
            <th scope="col">PRICE</th>
            <th scope="col">DESCRIPTION</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="dto" items="${list}" varStatus="status">
            <tr>
                <td>${dto.ino}</td>
                <td>${dto.name}</td>
                <td>${dto.price}</td>
                <td>${dto.description}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>--%>
</div>
</body>
</html>