<%@ page import="java.sql.*" %>
<%@ include file="../inc/dbconnect.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    String email = request.getParameter("email");

    PreparedStatement preparedStatement = null;

    String sql = "insert into userinfo2  (no, name, age, email) values (seq_userinfo2.nextval,?,?,?)";
    //String sql2 = "insert into userinfo2 (NO, NAME, AGE, EMAIL) valuse (seq_userinfo2.nextval,'" + name + "','" + age + "','" + email + "')";

    try {
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, name);
        preparedStatement.setInt(2, age);
        preparedStatement.setString(3, email);
        int result = preparedStatement.executeUpdate();
        if (result > 0) {
            out.println("<script> alert('입력성공!'); location.href='index.jsp'; </script>");
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