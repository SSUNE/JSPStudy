package Milk_servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

@WebServlet(name = "Servlet_Delete", value = "/MilkDelete")
public class Servlet_Delete extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");


        int mno = Integer.parseInt(request.getParameter("mno3"));


        String sql = "delete from milk where mno=?";
        PrintWriter out = response.getWriter();


        PreparedStatement pstmt = null;
        int result = 0;

        DBManager db = new DBManager();

        try {
            pstmt = db.connection().prepareStatement(sql);
            pstmt.setInt(1, mno);

            result = pstmt.executeUpdate();
            if (result > 0) {
                out.println("<script>alert('삭제성공 !'); location.href='" + request.getContextPath() + " /Milk'; </script>");
            } else {
                out.println("<script>alert('삭제실패 !'); location.href='" + request.getContextPath() + " /Milk'; </script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (db.connection() != null) {
                try {
                    db.connection().close();
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
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
