<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- END HEADER -->
<!-- END HEADER -->

<script>
</script>
<div class="container" style="margin-top:5%; min-height:500px">
    <h3>MULTIBOARD</h3>
    <table class="table table-striped">
        <caption>MULTIBOARD - MVC1</caption>
        <thead>
        <tr>
            <th scope="col">NO</th>
            <th scope="col">TITLE</th>
            <th scope="col">WRITER</th>
            <th scope="col">DATE</th>
            <th scope="col">HIT</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="total" value="${list.size()}"/>
        <c:forEach var="dto" items="${list}" varStatus="status">
            <tr>
                <td>${total-status.index}</td>
                <td><a href="<%=request.getContextPath()%>/detail.do?bno=${dto.bno}">${dto.btitle}</a></td>
                <td>${dto.bname}</td>
                <td>${dto.bdate}</td>
                <td>${dto.bhit}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <p class="text-right">
        <a href="<%=request.getContextPath()%>/write_view.do" class="btn btn-danger">글쓰기</a>
        <a href="<%=request.getContextPath()%>/detail.do" class="btn btn-danger">상세보기</a>
    </p>
</div>

<!-- END FOOTER -->
<!-- END FOOTER -->
<%@ include file="../footer.jsp" %>