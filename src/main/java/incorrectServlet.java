import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "incorrectServlet", urlPatterns = "/incorrect")

public class incorrectServlet extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String correct = (String)request.getAttribute("status") ;

        request.getRequestDispatcher("guessStatus.jsp").forward(request, response);
    }

}
