package Day073_java;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet003", value = "/SLIFE2")
public class Servlet004 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    int initcnt = 1;
    int dogetcnt = 1;
    int destroycnt = 1;


    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("####1. init 메서드는 첫 요청만 호출됨" + initcnt++);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("####2. DOGET, DOPOST" + dogetcnt++);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public void destroy() {
        System.out.println("####3. destroy 메서드는 마지막에 호출됨" + destroycnt++);
    }

}
