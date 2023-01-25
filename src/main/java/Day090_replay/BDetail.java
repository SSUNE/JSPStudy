package Day090_replay;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BDetail implements ReAction {
    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        BDAO dao = new BDAO();
        BDTO dto = new BDTO();
        dto.setBno(Integer.parseInt(request.getParameter("bno")));
        dao.update_hit(dto);
        request.setAttribute("dto", dao.read(dto));

        System.out.println("Command : BDetail...");
    }
}
