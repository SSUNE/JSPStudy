package Day090_replay;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;

public class BReply implements ReAction {
    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        BDAO dao = new BDAO();
        BDTO dto = new BDTO();

        int bgroup = Integer.parseInt(request.getParameter("bgroup"));
        int bstep = Integer.parseInt(request.getParameter("bstep"));
        int bindent = Integer.parseInt(request.getParameter("bindent"));
        ////////////////////////////////////π 1)999-1 = 998
        dto.setBstep(bstep); // 0> λ€ λΉΌμ£ΌμΈμ <1000
        dao.update_re1(dto);
        ////////////////////////////////////π 1)insert : 1 999 1
        dto.setBname(request.getParameter("bname"));
        dto.setBpass(request.getParameter("bpass"));
        dto.setBtitle(request.getParameter("btitle"));
        dto.setBcontent(request.getParameter("bcontent"));
        dto.setBip(InetAddress.getLocalHost().getHostName());
        dto.setBgroup(bgroup);
        dto.setBstep(bstep - 1);
        dto.setBindent(bindent + 1);

        int result = dao.create(dto);

        System.out.println("Command : Breply...");

        if (result > 0) {
            out.println("<script>alert('λ΅λ³κΈμ΄ μμ±λμμ΅λλ€.'); location.href='" + request.getContextPath() + "/list.re';</script>");
        } else {
            out.println("<script>alert('λ΅λ³κΈ μμ±μ μ€ν¨νμ΅λλ€.'); history.go(-1);</script>");
        }
    }
}
