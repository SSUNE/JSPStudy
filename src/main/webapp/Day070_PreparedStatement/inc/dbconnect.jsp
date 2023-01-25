<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    Connection connection = null;

    String user = "ouser";
    String pw = "1111";
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    connection = DriverManager.getConnection(url, user, pw);
%>
