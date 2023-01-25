package Day080;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "JSTLItemServlet", value = "/JSTLItemServlet")
public class JSTLItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html charset=UTF-8");

        JSTLItemDao dao = new JSTLItemDao();
        request.setAttribute("list", dao.list());

        request.getRequestDispatcher("/Day080_jstl/jstl005_forEach.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
