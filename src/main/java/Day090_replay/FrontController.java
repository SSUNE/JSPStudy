package Day090_replay;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FrontController", value = "*.re")
public class FrontController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        actionRe(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        actionRe(request, response);
    }

    private void actionRe(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");


        String view = "";
        ReAction comm = null;
        String uri = request.getRequestURI().substring(request.getContextPath().length());

        if (uri.equals("/list.re")) {
            System.out.println("리스트보기 : /list.re … get[dao, view]");
            comm = new BList();
            comm.exec(request, response);
            view = "/board/list.jsp";

        } else if (uri.equals("/write_view.re")) {
            System.out.println("글쓰기(폼)");
            view = "/board/write.jsp";

        } else if (uri.equals("/write.re")) {
            System.out.println("글쓰기");
            comm = new BCreate();
            comm.exec(request, response);
            view = "list.re";
            return;

        } else if (uri.equals("/detail.re")) {
            System.out.println("상세보기");
            comm = new BDetail();
            comm.exec(request, response);
            view = "/board/detail.jsp";

        } else if (uri.equals("/edit_view.re")) {
            System.out.println("수정하기(폼)");
            comm = new BEditView();
            comm.exec(request, response);
            view = "/board/edit.jsp";

        } else if (uri.equals("/edit.re")) {
            System.out.println("수정하기");
            comm = new BEdit();
            comm.exec(request, response);
            view = "/detail.re";
            return;

        } else if (uri.equals("/reply_view.re")) {
            System.out.println("답변달기(폼)");
            comm = new BReplyView();
            comm.exec(request, response);
            view = "/board/reply.jsp";

        } else if (uri.equals("/reply.re")) {
            System.out.println("답변달기");
            comm = new BReply();
            comm.exec(request, response);
            view = "/list.re";
            return;

        } else if (uri.equals("/delete_view.re")) {
            System.out.println("삭제하기(폼)");
            view = "/board/delete.jsp";

        } else if (uri.equals("/delete.re")) {
            System.out.println("삭제하기");
            comm = new BDelete();
            comm.exec(request, response);
            view = "/list.re";
            return;
        }

        request.getRequestDispatcher(view).forward(request, response);
    }
}
