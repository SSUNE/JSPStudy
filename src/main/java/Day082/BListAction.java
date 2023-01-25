package Day082;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BListAction implements BAction{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        BDao dao = new BDao();
        request.setAttribute("list",dao.listAll());
        System.out.println("BListAction : 전체 데이터 가져오기");
    }
}
