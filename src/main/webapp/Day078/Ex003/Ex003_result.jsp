<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("name");
    session.setMaxInactiveInterval(60*10);
    session.setAttribute("name", name);
    out.println("<script>location.href='Ex003.jsp';</script>");
%>