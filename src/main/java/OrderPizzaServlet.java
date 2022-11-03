import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;


@WebServlet(name = "OrderPizzaServlet", urlPatterns = "/order")

public class OrderPizzaServlet extends HttpServlet {

        protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Enumeration<String> keys = request.getParameterNames();
        while (keys.hasMoreElements() ) {
            String key =  keys.nextElement();
            System.out.println(key);
            out.write("<h4>"+key+":  </h4>");


            String [] ParamValues = request.getParameterValues(key);
            for (String ParamValue : ParamValues) {
                System.out.println(ParamValue);
                out.write("<h6>"+ParamValue+"</h6>");

            }
            out.write("<br>");
        }
        out.close();
    }
}



