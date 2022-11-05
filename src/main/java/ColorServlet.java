import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ColorServlet", urlPatterns = "/colorDisplay")
public class ColorServlet extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String color = (String)request.getAttribute("color") ;
        System.out.println(color);
        request.getRequestDispatcher("colorpage.jsp").forward(request, response);
    }

}
