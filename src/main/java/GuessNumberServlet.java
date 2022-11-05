import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GuessNumberServlet", urlPatterns = "/number")
public class GuessNumberServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
int status = Integer.parseInt( request.getParameter("number"));
if(status == 2){

    request.setAttribute("status","You Won!");
    RequestDispatcher rd = request.getRequestDispatcher("correct");
    rd.forward(request,response);

}else {
    request.setAttribute("status","You Lose!");
    RequestDispatcher rd = request.getRequestDispatcher("incorrect");
    rd.forward(request,response);
}
    }
}