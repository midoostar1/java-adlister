import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ColorPickerServlet", urlPatterns = "/color")

public class ColorPickerServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    String color =  request.getParameter("color");


        request.setAttribute("color",color);
        RequestDispatcher rd = request.getRequestDispatcher("colorDisplay");
        rd.forward(request,response);
    }

}
