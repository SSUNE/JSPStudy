package Day084_Paging;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "ServletSearch", value = "/ServletSearch")
public class ServletSearch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        PreparedStatement preparedStatement= null;
        ResultSet resultSet = null;
        String result = "";
        Connection connection = null;

        String a = request.getParameter("jung");

        try{
            DBManager db = new DBManager();
            connection = db.connection();
            preparedStatement = connection.prepareStatement("select * from userinfo where name = ?");
            preparedStatement.setString(1,a);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                out.println("중복입니다.");
            }
            else{out.println("중복이 아닙니다.");}
        }catch (Exception e){e.printStackTrace();}
        finally {
            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
