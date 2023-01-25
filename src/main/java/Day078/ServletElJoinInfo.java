package Day078;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ELJoinInfoServlet", value = "/ELJoinInfoServlet")
public class ServletElJoinInfo extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ServletElJoinInfo() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String name = request.getParameter("name");
        int stdno = Integer.parseInt(request.getParameter("stdno"));
        int age = Integer.parseInt(request.getParameter("age"));
        int grade = Integer.parseInt(request.getParameter("grade"));
        request.setAttribute("join", new ELJoinIno(name, age, grade, stdno));
        request.getRequestDispatcher("/Day078/Ex005_result.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        int grade = Integer.parseInt(request.getParameter("grade"));
        PrintWriter out = response.getWriter();

        ELJoinIno join = new ELJoinIno(name, age, grade);

        ELJoinIno_Dao dao = new ELJoinIno_Dao();

        int result = dao.insert(join);

        if (result > 0) {
            request.setAttribute("member", join);
            request.setAttribute("result", result);
            request.getRequestDispatcher("/Day078/Ex005_result.jsp").forward(request, response);
        } else {
            out.println("<script>alert('관리자에게 문의바랍니다'); history.go(-1);</script>");
        }
    }

}
