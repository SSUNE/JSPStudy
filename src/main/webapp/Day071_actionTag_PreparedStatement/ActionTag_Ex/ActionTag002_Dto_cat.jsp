
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
     <h3 class="panel-heading">1. dto 만들기</h3>
     <pre>
     package userBean;

     public class Dto_cat {
         private String name;

         public Dto_cat() {
         }

         public String getName() {
             return name;
         }

         public void setName(String name) {
             this.name = name;
         }

         @Override
         public String toString() {
             return "Dto_cat{" +
                     "name='" + name + '\'' +
                     '}';
         }
     }
     </pre>

     <h3 class="panel-heading">2. dto 사용하기(1) - java</h3>
    <%@ page import="userBean.Dto_cat" %>
    <%
        Dto_cat mycat1 = new Dto_cat(); //## 1번
        mycat1.setName("ssune");
        out.println(mycat1.getName());
    %>

    <h3 class="panel-heading">2. dto 사용하기(2) - useBean</h3>
    <jsp:useBean id="mycat2" class="userBean.Dto_cat" scope="page"/> <!-- 1번 -->
    <jsp:setProperty name="mycat2" property="name" value="ssune"/>
    <jsp:getProperty name="mycat2" property="name"/>

    <h3 class="panel-heading">2. dto 사용하기(3) - forward로 넘긴 데이터 사용하기 useBean</h3>
    <jsp:forward page="ActionTag002_ex.jsp">
        <jsp:param name="name" value="test"/>
    </jsp:forward>


</div>
</body>
</html>