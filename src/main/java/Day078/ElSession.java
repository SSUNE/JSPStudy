package Day078;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ElSession", value = "/ElSession")
public class ElSession extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ElSession() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        ///
        HttpSession session = request.getSession();
        session.setAttribute("elTest", "hello");
        ///
        request.getRequestDispatcher("/Day078/Ex003/elEx003_result.jsp").forward(request, response);
    }

}
