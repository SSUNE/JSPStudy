package Day090_replay;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.InetAddress;

public class BCreate implements ReAction {
    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        int bgroup = -1, bstep = -1, bindent = -1, max = -1;
        BDAO dao = new BDAO();
        BDTO dto = new BDTO();
        max = dao.create_max();
        bgroup = (int) (Math.ceil(max / (float) 1000)) + 1;
        bstep = bgroup * 1000;
        bindent = 0;
        //원본글
        dto.setBname(request.getParameter("bname"));
        dto.setBpass(request.getParameter("bpass"));
        dto.setBtitle(request.getParameter("btitle"));
        dto.setBcontent(request.getParameter("bcontent"));
        dto.setBip(InetAddress.getLocalHost().getHostName());
        dto.setBgroup(bgroup);
        dto.setBstep(bstep);
        dto.setBindent(bindent);
        dao.create(dto);

        System.out.println("Command : BCreate...");
    }
}