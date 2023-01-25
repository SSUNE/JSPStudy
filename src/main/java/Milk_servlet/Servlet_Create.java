package Milk_servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

//주소창에 노출 되는 페이지 이름
@WebServlet(name = "Servlet_Create", value = "/MilkCreate")
public class Servlet_Create extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Servlet_Create() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String mname = request.getParameter("mname");
        int mprice = Integer.parseInt(request.getParameter("mprice"));
        String sql = "insert into milk (mname,mprice)values (?,?)";
        PrintWriter out = response.getWriter();

        System.out.println(mname + mprice);

//
        PreparedStatement pstmt = null;
        int result = 0;
        DBManager db = new DBManager();

        try {
            pstmt = db.connection().prepareStatement(sql);
            pstmt.setString(1, mname);
            pstmt.setInt(2, mprice);

            result = pstmt.executeUpdate();
            if (result > 0) {
                out.println("<script>alert('입력성공 !'); location.href='" + request.getContextPath() + "/Milk'; </script>");
            } else {
                out.println("<script>alert('입력실패 !'); location.href='" + request.getContextPath() + "/Milk'; </script>");
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
}

