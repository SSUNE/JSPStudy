<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="../inc/header.jsp"/>
<%@ include file="../inc/dbconnect.jsp" %>
<%@ page import="java.sql.*" %>
<!-- HEADER END -->
<!-- HEADER END -->
<!-- HEADER END -->

<div class="container panel panel-info mymain">
    <h3 class="panel-heading">01. userinfo - table</h3>
    <table class="table table-striped">
        <caption> oracle - userinfo</caption>
        <thead>
        <tr>
            <th scope="col">NO</th>
            <th scope="col">NAME</th>
            <th scope="col">AGE</th>
            <th scope="col">EMAIL</th>
        </tr>
        </thead>
        <tbody>
        <%
            String sql = "select * from userinfo2";
            PreparedStatement preparedStatement = null;
            ResultSet resultSet = null;

            try {
                preparedStatement = connection.prepareStatement(sql);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    out.println("<tr><td>" + resultSet.getString(1) + "</td><td>"
                            + resultSet.getString(2) + "</td><td>"
                            + resultSet.getString(3) + "</td><td>"
                            + resultSet.getString(4) + "</td></tr>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }finally {
                if (resultSet != null){
                    try {
                        resultSet.close();
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                }
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
        </tbody>
    </table>
</div>

<div class="container panel panel-info mymain">
    <h3 class="panel-heading">02. userinfo - 번호가 1이고 해당이름이 aaa라면 데이터 출력</h3>
    <table class="table table-striped">
        <caption> oracle - userinfo</caption>
        <thead>
        <tr>
            <th scope="col">NO</th>
            <th scope="col">NAME</th>
            <th scope="col">AGE</th>
            <th scope="col">EMAIL</th>
        </tr>
        </thead>
        <tbody>
        <%

            try {
                connection = DriverManager.getConnection(url,user,pw);
                preparedStatement = connection.prepareStatement("select * from userinfo2 where no=? and name=?");
                preparedStatement.setInt(1,1);
                preparedStatement.setString(2,"aaa");
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    out.println("<tr><td>" + resultSet.getString(1) + "</td><td>" // no
                            + resultSet.getString(2) + "</td><td>" //name
                            + resultSet.getString(3) + "</td><td>" //age
                            + resultSet.getString(4) + "</td></tr>"// email
                            );
                }
            } catch (Exception e) {
                e.printStackTrace();
            }finally {
                if (resultSet != null){
                    try {
                        resultSet.close();
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                }
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
        </tbody>
    </table>
</div>

<!-- FOOTER START -->
<!-- FOOTER START -->
<!-- FOOTER START -->
<jsp:include page="../inc/footer.jsp"/>