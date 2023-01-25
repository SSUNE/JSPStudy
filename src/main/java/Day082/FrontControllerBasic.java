package Day082;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "FrontControllerBasic", value = "*.test")
public class FrontControllerBasic extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public FrontControllerBasic() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        actionTest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        actionTest(request, response);
    }

    private void actionTest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        ///////////////////////////////////////
        out.println(request.getRequestURI() + "<br/>");
        out.println(request.getRequestURL() + "<br/>");
        out.println(request.getServletPath() + "<br/>");
        out.println(request.getServletContext() + "<br/>");
        ///////////////////////////////////////
        // q1. http://localhost:8080/mvc4_1/write.test 접속시 => 글쓰기 페이지로 이동해주세요!
        String path = request.getRequestURI().substring(request.getContextPath().length());
        if (path.equals("/write.test")) {
            out.println("글쓰기 페이지로 이동");
        } else if (path.equals("/list.test")) {
            out.println("리스트 페이지로 이동!");
        }


    }
}
