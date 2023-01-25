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

<%
    request.setCharacterEncoding("UTF-8");
    //response.setContentType("text/html; charset=UTF-8");

    String name = request.getParameter("name");
    int price = Integer.parseInt(request.getParameter("price"));

    String sql = "insert into milk(name,price) values(?,?);";

    PreparedStatement preparedStatement = null;

    try {
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,name);
        preparedStatement.setInt(2,price);

        int result = preparedStatement.executeUpdate();

        // 삽입처리후 forward 이용해서 데이터 넘기기(주소표시창줄 안바뀜) --> (1) actionTag로 바꾸기
        request.getRequestDispatcher("milk_result.jsp").forward(request,response);

    }catch (Exception e){
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