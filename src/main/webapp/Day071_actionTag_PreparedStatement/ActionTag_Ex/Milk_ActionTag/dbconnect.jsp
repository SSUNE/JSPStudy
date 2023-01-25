<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    Connection connection = null;

    String user = "root";
    String pw = "12341234";
    String url = "jdbc:mysql://localhost:3306/db0?useSSL=false";
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection(url, user, pw);
%>
