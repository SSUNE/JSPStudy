package Day086_Accordion;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Content001", value = "/Content001")
public class Content001 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        DAO dao = new DAO();
        request.setAttribute("list", dao.list());
        //request.getRequestDispatcher("/Day086/content001_arrcodian.jsp").forward(request,response);
        //request.getRequestDispatcher("/Day086/content002_tab.jsp").forward(request,response);
        request.getRequestDispatcher("/Day086/content003_model.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
