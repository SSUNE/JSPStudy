package Milk_servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

//아래가 주소창에 노출되는 이름이 된다. -> Milk
@WebServlet(name = "Servlet_Milk", value = "/Milk")
public class Servlet_Milk extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public Servlet_Milk() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");


        PreparedStatement pstmt = null;
        ResultSet rset = null;
        Connection conn = null;
        ArrayList<DtoMilk> list = new ArrayList<DtoMilk>();
        String sql = "select * from milk order by 1";

        try {
            DBManager db = new DBManager();
            conn = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            pstmt = conn.prepareStatement(sql);

            rset = pstmt.executeQuery();

            while (rset.next()) {
                list.add(new DtoMilk(rset.getInt("mno"), rset.getString("mname"), rset.getInt("mprice")));
            }
            request.setAttribute("list", list);
            request.getRequestDispatcher("/Day074_075/Milk/milks.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (rset != null) {
                try {
                    rset.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
