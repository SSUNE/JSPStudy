package Day089_upload;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CCreate implements CCommand {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {

        CDao dao = new CDao();
        CDto dto = new CDto();

        try {
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();

            String path = "/Users/ssune/OneDrive/JAVA CLASS/IdeaProjects/Project_JSP_2/src/main/webapp/upload";
            File directory = new File(path);
            if(!directory.exists()) {
                directory.mkdirs();
            }

            MultipartRequest multi = new MultipartRequest(request, path, 1024 * 1024 * 5, "UTF-8", new DefaultFileRenamePolicy());
            String img = multi.getFilesystemName("img");
            if (img == null) {
                System.out.println("error:파일업로드 안됨");
            }


            // no은 안넣어도됨 null 값나옴
            dto.setName(multi.getParameter("name"));
            dto.setAge(Integer.parseInt(multi.getParameter("age")));
            dto.setImg(multi.getFilesystemName("img"));

            int result = dao.create(dto);
            request.setAttribute("create", result);

            if (result > 0) {
                out.println("<script>alert('유저추가에 성공했습니다.'); location.href='" + request.getContextPath() + "/list.upload';</script>");
            } else {
                out.println("<script>alert('관리자에게 문의해주세요!.'); history.go(-1); </script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
