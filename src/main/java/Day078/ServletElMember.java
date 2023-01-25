package Day078;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "ServletElMember", value = "/ELmemberServlet")
public class ServletElMember extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ServletElMember() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        int uno = Integer.parseInt(request.getParameter("uno"));
        String mid = request.getParameter("mid");
        String mpass = request.getParameter("mpass");
        String memail = request.getParameter("memail");

        ELMember member = new ELMember(uno, mid, mpass, memail);

        request.setAttribute("member", member);
        request.getRequestDispatcher("/Day078/Ex006_result.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String mid2 = request.getParameter("mid2");
        String mpass2 = request.getParameter("mpass2");
        String memail2 = request.getParameter("memail2");
        int uno = 0;
        String sql = "insert into member2 values (member2_seq.nextval, ?, ?, ?)";
        String sql2 = "select * from member2 where userid = ?";
        DBManager db = new DBManager();
        Connection conn = db.connection();
        PreparedStatement pstmt = null;
        ResultSet rset = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, mid2);
            pstmt.setString(2, mpass2);
            pstmt.setString(3, memail2);

            int result = pstmt.executeUpdate();
            if (result > 0) {
                request.setAttribute("result", result);
            }
            pstmt.close();

            pstmt = conn.prepareStatement(sql2);
            pstmt.setString(1, mid2);
            rset = pstmt.executeQuery();
            if (rset.next()) {
                uno = rset.getInt("uno");
            }
            ELMember member = new ELMember(uno, mid2, mpass2, memail2);
            request.setAttribute("member", member);
            request.getRequestDispatcher("/Day078/Ex006_result.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rset != null) {
                try {
                    rset.close();
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
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

        }


    }
}
