package Day089_upload;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.upload1")
public class CFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;    
    public CFrontController() { super(); }
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		upload(request, response);
	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		upload(request, response);
	}
	
	protected void upload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String path = request.getRequestURI().substring(request.getContextPath().length());
		String view = "/Day089_sliding/content005_upload.jsp";
		CCommand comm = null;
		if(path.equals("/create.upload1")) {
			comm = new CCreate(); comm.execute(request, response); 
			view = "/list.upload1";
			return;
		} else if (path.equals("/list.upload1")) { 
			comm = new CList(); comm.execute(request, response); 
			view = "/Day089_sliding/content005_upload.jsp";
		}
		 
		request.getRequestDispatcher(view).forward(request, response);
	}

}
