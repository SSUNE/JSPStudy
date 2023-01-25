package Day078;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ElAdding", value = "/ELAdding")
public class ElAdding extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        int total = num1 + num2;

        //toal 을 넘기지 못하니까 셑 에트리뷰트로 이용해서 넘겨오면 됨.
        request.setAttribute("total", total);
        request.getRequestDispatcher("/Day078/Ex002/result.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
