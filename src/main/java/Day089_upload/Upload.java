package Day089_upload;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/upload001.do")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public Upload() { super();  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//1. 경로설정
		String path = "/upload/";
		// 1) 연습용 : server.xml < Context docBase="C:\ upload" path="/ upload" reloadable="true"/ >
		// 2) 호스팅용 : path = request.getServletContext().getRealPath(path);
		try {
		//2. 업로드 설정										요청권한넘기기	5MB		인코딩설정		파일이름겹치면 어쩔래? 이름뒤에 숫자붙여줘		
		MultipartRequest multi = new MultipartRequest(request, path, 1024*1024*5, "UTF-8", new DefaultFileRenamePolicy());
		String file = multi.getFilesystemName("file"); //아까 정한 name값
		if(file==null) {System.out.println("error:파일업로드 안됨");}
		String name = multi.getParameter("name");// request권한을 넘긴거여서
		String title = multi.getParameter("title");
		
		request.setAttribute("name", name);
		request.setAttribute("title", title);
		request.setAttribute("file", file);
		//request.getRequestDispatcher("/day086_userinfo_contents_upload/content_upload_result.jsp").forward(request, response);
		request.getRequestDispatcher("/Day089_sliding/content005_upload.jsp").forward(request, response);
		
		} catch(Exception e) {e.printStackTrace();}
	}

}
