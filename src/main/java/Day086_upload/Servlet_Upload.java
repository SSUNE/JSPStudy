package Day086_upload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Servlet_Upload", value = "/upload000.do")
public class Servlet_Upload extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");


        //1. 경로설정
        String path = "/Users/ssune/OneDrive/JAVA CLASS/IdeaProjects/Project_JSP_2/src/main/webapp/upload";
        // 연습용 : server.xml
        // 호스팅용 : path : request.getServletContext().getRealPath(path);

        //2. 업로드설정

        // = new MultipartRequest(request 요청권한넘기기 ,업로드경로,최대파일용량,인코딩설정,이름이 겹칠때 새로운 이름으로 처리);
        MultipartRequest multipartRequest = new MultipartRequest(request,path,1024*1024*5,"UTF-8",new DefaultFileRenamePolicy());

        String file = multipartRequest.getFilesystemName("file");
        String name = multipartRequest.getParameter("name");
        String title = multipartRequest.getParameter("title");

        request.setAttribute("name",name);
        request.setAttribute("title",title);
        request.setAttribute("file",file);

        request.getRequestDispatcher("/Day086/Upload/upload_result.jsp").forward(request,response);

    }
}
