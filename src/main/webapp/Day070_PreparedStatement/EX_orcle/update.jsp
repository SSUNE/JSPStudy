<%@ page import="java.sql.*" %>
<%@ include file="../inc/dbconnect.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String no2 = request.getParameter("no2");
    String name2 = request.getParameter("name2");
    String age2 = request.getParameter("age2");

    PreparedStatement preparedStatement = null;

    try {
        preparedStatement = connection.prepareStatement("update userinfo2 set name=?, age=? where no=" + no2);
        preparedStatement.setString(1,name2);
        preparedStatement.setString(2,age2);

        int result = preparedStatement.executeUpdate();

        if (result > 0) {
            out.println("<script> alert('수정성공!'); location.href='index.jsp'; </script>");
        } else {
            out.println("<script> alert('관리자에게 문의바랍니다.'); history.go(-1); </script>");
        }

    } catch (Exception e){
        e.printStackTrace();
    }finally {
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