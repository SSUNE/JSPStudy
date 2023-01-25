package Day090_replay;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface ReAction {
    public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
