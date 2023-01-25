package Day082;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "FrontController", value = "*.do")
public class FrontController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public FrontController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        actionTest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        actionTest(request, response);
    }

    protected void actionTest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        //String path = request.getServletPath();
        String path = request.getRequestURI().substring(request.getContextPath().length());
        String view = "/Day082_DBCP/board/list.jsp";
        BAction comm = null;

        if (path.equals("/list.do")) {
            System.out.println("get-list로 이동!");
            //1. 전체 데이터 가져오기
            //2. /board/list.jsp로 이동
            comm = new BListAction();
            comm.execute(request, response);

            view = "/Day082_DBCP/board/list.jsp";

        } else if (path.equals("/write_view.do")) {
            System.out.println("get-write 폼페이지로 이동!");
            view = "/Day082_DBCP/board/write.jsp";

        } else if (path.equals("/write.do")) {
            System.out.println("post-write 기능 이동!");
            comm = new BWriteAction();
            comm.execute(request, response);
            view = "/Day082_DBCP/board/list.jsp";

        } else if (path.equals("/detail.do")) {
            System.out.println("get-상세페이지로 이동!");
            comm = new BDetailAction();
            comm.execute(request, response);
            view = "/Day082_DBCP/board/detail.jsp";

        } else if (path.equals("/edit_view.do")) {
            System.out.println("get-edit_view 수정폼페이지로 이동!");
            comm = new BEditViewAction();
            comm.execute(request, response);
            view = "/Day082_DBCP/board/edit.jsp";

        } else if (path.equals("/edit.do")) {
            System.out.println("post-edit 페이지로 이동!");
            comm = new BEditAction();
            comm.execute(request, response);
            view = "/Day082_DBCP/board/datail.jsp";

        } else if (path.equals("/delete_view.do")) {
            System.out.println("get-삭제폼페이지로 이동!");
            view = "/Day082_DBCP/board/datail.jsp";

        } else if (path.equals("/delete.do")) {
            System.out.println("get-삭제 기능 이동!");
            comm = new BDeleteAction();
            comm.execute(request, response);
            view = "/Day082_DBCP/board/list.jsp";
        }
        request.getRequestDispatcher(view).forward(request,response);
    }

}