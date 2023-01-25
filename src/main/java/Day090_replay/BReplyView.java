package Day090_replay;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BReplyView implements ReAction {
    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        BDAO dao = new BDAO();
        BDTO dto = new BDTO();

        dto.setBno(Integer.parseInt(request.getParameter("bno")));
        dto = dao.read(dto);
        dto.setBtitle("ㄴre:" + dto.getBtitle());
        dto.setBcontent("\n\n\n-----------\n" + dto.getBcontent().replaceAll("\n", "\n>") + "\n");
        request.setAttribute("dto", dto);

        System.out.println("Command : BReplyView...");
    }
}
