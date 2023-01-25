package Day093_ajax;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

@WebServlet(name = "Ajax_xml000", value = "/Ajax_xml000")
public class Ajax_xml000 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        Connection connection = null;


        try {
            DBManager dbManager = new DBManager();
            connection = dbManager.connection();
            String result = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n";
            if (connection != null){
                result += "<result> db연동성공 </result>";
            }

            out.println(result);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null){
                try {
                    connection.close();
                } catch (Exception e){
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
