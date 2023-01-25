<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    Connection connection = null;

    String user = "audtn8813";
    String pw = "Z8@Njhmk!-Ywyzym";
    String url = "jdbc:mysql://localhost:3306/audtn8813?useSSL=false";
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection(url, user, pw);
%>