package Day082;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface BAction {
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

}
