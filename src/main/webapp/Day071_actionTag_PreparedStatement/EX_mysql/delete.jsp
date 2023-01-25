<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String no3 = request.getParameter("no3");

    PreparedStatement preparedStatement = null;

    try {
        preparedStatement = connection.prepareStatement("delete from userinfo where no=" + no3);

        int result = preparedStatement.executeUpdate();

        if (result > 0) {
            out.println("<script> alert('삭제성공!'); location.href='index.jsp'; </script>");
        } else {
            out.println("<script> alert('관리자에게 문의바랍니다.'); history.go(-1); </script>");
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
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