package Day073_java;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet(name = "Ex001_Search", value = "/Servlet_search")
public class Ex001_Search extends HttpServlet {
    public Ex001_Search() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String query = request.getParameter("query");
        //response.sendRedirect(request.getContextPath() + "Day073/serlvet_ex001.jsp?query=" + request.getParameter("query"));
        response.sendRedirect(request.getContextPath() + "Day073_java/serlvet_ex001.jsp?query="
                + URLEncoder.encode(request.getParameter("query"),"UTF-8"));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        //데이터받아서 db에서 처리후.
        request.getRequestDispatcher("Day073_java/serlvet_ex001.jsp").forward(request,response);
    }
}
