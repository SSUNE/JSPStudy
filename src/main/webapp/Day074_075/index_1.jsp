<%@page import="Milk_servlet.DtoMilk" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="Milk_servlet.DBManager" %>
<%@ page import="Milk_servlet.DBManager" %>
<%@ page import="Milk_servlet.DtoMilk" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="inc/header.jsp" %>
<div class="container panel panel-info">
    <h3 class="panel-heading">001. header/footer</h3>
    <pre>done!</pre>

    <h3 class="panel-heading">002. error</h3>
    <pre>done!</pre>
    <%-- <p><a href="no.jsp">no page</a></p>
    <%=50/0%> --%>

    <h3 class="panel-heading">003. dbmanager</h3>
    <%
        DBManager db = new DBManager();
        Connection conn = db.connection();
        if (conn != null) {
            out.println("db연동성공");
        }
    %>

    <h3 class="panel-heading">004. dto</h3>
    <%
        DtoMilk dto = new DtoMilk();
        out.println(dto);
    %>

    <h3 class="panel-heading">005. db/ table - sequence</h3>
    <pre>

      milk table
      sequence 준비 - 나는 기존 seq_milk 를 사용할 것임

         이름     널?       유형
      ------ -------- ------------
      MNO    NOT NULL NUMBER
      MNAME  NOT NULL VARCHAR2(50)
      MPRICE NOT NULL NUMBER

   </pre>

    <h3 class="panel-heading">006. Milk Servlet index</h3>
    <%response.sendRedirect(request.getContextPath()+ "/Milk"); %><!-- sendRedirect는 get방식 -->

</div>

<%@ include file="inc/footer.jsp" %>