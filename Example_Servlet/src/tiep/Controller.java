/**
 *
 */
/**
 * @tieptv
 *
 * 11:31:53 AM
 */
package tiep;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Controller extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public Controller(){}
 @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
     ServletOutputStream out = response.getOutputStream();

     out.println("<html>");
     out.println("<head><title>Hello Servlet</title></head>");

     out.println("<body>");
     out.println("<h3>Hello World</h3>");
     out.println("This is my first Servlet");
     out.println("</body>");
     out.println("<html>");
}
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
}
}