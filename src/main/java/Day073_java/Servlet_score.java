package Day073_java;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/Servlet_Score")
public class Servlet_score extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Servlet_score() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        int kor = Integer.parseInt(request.getParameter("kor"));
        int eng = Integer.parseInt(request.getParameter("eng"));
        int math = Integer.parseInt(request.getParameter("math"));
        int total = kor + eng + math;
        double avg = (kor + eng + math) / 3.0;
        String hap = "";
        String rank = "";

        //
        if (avg >= 60 && kor >= 40 && eng >= 40 && math >= 40) {
            hap = "통과";
        } else if (avg >= 60 && kor < 40 || eng < 40 || math < 40) {
            hap = "불합격";
        }

        //
        if (avg >= 90) {
            rank = "A";
        } else if (avg >= 80) {
            rank = "B";
        } else if (avg >= 70) {
            rank = "C";
        }
        request.setAttribute("kor", kor);
        request.setAttribute("eng", eng);
        request.setAttribute("math", math);
        request.setAttribute("total", total);
        request.setAttribute("avg", avg);
        request.setAttribute("hap", hap);
        request.setAttribute("rank", rank);

        request.getRequestDispatcher("Day073/Score_ver/Score_result.jsp").forward(request, response);
    }

}