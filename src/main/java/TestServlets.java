import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet (name = "TestServlet",urlPatterns = "/t" )

public class TestServlets extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException{
   response.setContentType("text/html");

   String greeting = request.getParameter("greeting");

      PrintWriter out = response.getWriter();
      out.println("<h1>Hello" +greeting+ "From Haskell!</h1>");
  }


}
