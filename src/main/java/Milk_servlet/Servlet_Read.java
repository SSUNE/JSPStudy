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

@WebServlet(name = "Servlet_Read", value = "/MilkRead")
public class Servlet_Read extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");


        PreparedStatement pstmt = null;
        ResultSet rset = null;
        Connection conn = null;

        String sql = "select * from milk where mno=?";


        try {
            DBManager db = new DBManager();
            conn = db.connection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setInt(1, Integer.parseInt(request.getParameter("mno")));

            rset = pstmt.executeQuery();

            while (rset.next()) {
                request.setAttribute("dto", new DtoMilk(rset.getInt(1), rset.getString(2), rset.getInt(3)));
                request.getRequestDispatcher("/Milk/milk_select.jsp").forward(request, response);
            }
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

    }
}
