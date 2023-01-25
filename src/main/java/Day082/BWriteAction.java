package Day082;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BWriteAction implements BAction {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        BDao dao = new BDao();
        BDTO dto = new BDTO();

        dto.setBname(request.getParameter("bname"));
        dto.setBpass(request.getParameter("bpass"));
        dto.setBtitle(request.getParameter("btitle"));
        dto.setBcontent(request.getParameter("bcontent"));

        int result = dao.create(dto);
        request.setAttribute("creat", result);

        System.out.println("글삽입기능");
    }
}
