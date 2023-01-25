package Day090_replay;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class BDelete implements ReAction {
    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BDAO dao = new BDAO();
        BDTO dto = new BDTO();
        PrintWriter out = response.getWriter();

        dto.setBno(Integer.parseInt(request.getParameter("bno")));
        dto.setBpass(request.getParameter("bpss"));
        int result = dao. delete(dto);

        if (result > 0) {
            out.println("<script>alert('글 삭제에 성공하였습니다.'); location.href='" + request.getContextPath() + "/list.re';</script>");
        } else {
            out.println("<script>alert('글 삭제에 실패하였습니다.'); history.go(-1);</script>");
        }

        System.out.println("Command : BDelete...");
    }
}
