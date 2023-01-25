package Day084_Paging.Paging;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "JSTLItemServlet", value = "/JSTLItemPagingServlet")
public class JSTLItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html charset=UTF-8");

        JSTLItemDao dao = new JSTLItemDao();
        //////////////////////////////////////////////////////////////////////////////////////////////// paging 데이터 셋팅 start
        // 1. 전체게시판(레코드) 개수         : 256
        // 2. 한페이지당 보여주는(레코드) 개수   : 10
        // 3. 전체페이지               : 26  --계산식 : Math.ceil(256/10); = 25.6 => 26
        // 4. db에서 가져올 번호            : 10
        // 5. 하단페이지네비               : 12345678910 10
        // 6. 현재페이지번호               : 2
        // 7. 시작버튼                  : 2
        // 8. 마지막버튼               : 10
        int pageTotal = dao.listcnt();
        System.out.println("1. 전체게시판(레코드) 개수 : " + pageTotal);

        int onepagelimit = 10;
        System.out.println("2. 한페이지당 보여주는(레코드) 개수 : " + onepagelimit);

        int pageAll = (int) Math.ceil(pageTotal / (float) onepagelimit);
        System.out.println("3. 전체페이지 " + pageAll);

        int pstartno = 0; //page start no
        if (request.getParameter("pstartno") != null) {
            pstartno = Integer.parseInt(request.getParameter("pstartno"));
        }
        System.out.println("4-1. db에서 가져올 번호 : " + pstartno);
        ArrayList<JSTLItem> list = dao.listAll(pstartno);
        System.out.println("4-2. db에서 가져온 리스트 : " + list);


        int bottomlist = 10;
        System.out.println("5. 하단페이지네비 : " + bottomlist);

        int current = (int) Math.ceil((pstartno + 1) / (float) onepagelimit);
        System.out.println("6. 하단네비 현재페이지 : " + current);

        int start = (int) (Math.floor((current - 1) / (float) bottomlist) * bottomlist + 1);
        System.out.println("7. 하단네비 시작페이지 : " + start);

        int end = start + bottomlist - 1;
        if (pageAll < end){
            end = pageAll;
        }
        System.out.println("8. 하단네비 끝페이지 : " + end);

        request.setAttribute("pageTotal", pageTotal);
        request.setAttribute("onepagelimit", onepagelimit);
        request.setAttribute("pageAll", pageAll);
        request.setAttribute("pstartno", pstartno);
        request.setAttribute("bottomlist", bottomlist);
        request.setAttribute("current", current);
        request.setAttribute("start", start);
        request.setAttribute("end", end);
        request.setAttribute("paginglist", list);


        //////////////////////////////////////////////////////////////////////////////////////////////// paging 데이터 셋팅 end
//        endPage = ((int)Math.ceil(page/(double)displayPage))*displayPage;
//        System.out.println("endPage : " + endPage);
//
//        beginPage = endPage - (displayPage - 1);
//        System.out.println("beginPage : " + beginPage);

        request.getRequestDispatcher("/Day084/paging/paging_result.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
