package Day090_replay;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class BEdit implements ReAction {
    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        BDAO dao = new BDAO();
        BDTO dto = new BDTO();

        int bno = Integer.parseInt(request.getParameter("bno"));
        dto.setBtitle(request.getParameter("btitle"));
        dto.setBcontent(request.getParameter("bcontent"));
        dto.setBno(bno);
        dto.setBpass(request.getParameter("bpass"));
        int result = dao.update(dto);

        if (result > 0) {
            out.println("<script>alert('글 수정에 성공하였습니다.'); location.href='" + request.getContextPath() + "/list.re';</script>");
        } else {
            out.println("<script>alert('글 수정에 실패하였습니다.'); history.go(-1);</script>");
        }

        System.out.println("Command : BEdit...");
    }
}
