package Day089_upload;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class CList implements CCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		CDao dao = new CDao();
		
		ArrayList<CDto> list = dao.list();

		request.setAttribute("list", list);
		
		}catch(Exception e) {e.printStackTrace();}
		
	}

}
