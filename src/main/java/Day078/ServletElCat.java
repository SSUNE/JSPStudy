package Day078;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletElCat", value = "/ElCatServlet")
public class ServletElCat extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        request.setAttribute("mycat",new ElCat(request.getParameter("name"))); // 받는걸 다이렉트로 넣어서 객체로만듬
        request.getRequestDispatcher("/Day078/Ex004/elBean001_result.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
