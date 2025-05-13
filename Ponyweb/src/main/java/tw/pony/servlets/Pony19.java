package tw.pony.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tw.pony.apis.Ponyutils;

import java.io.IOException;

@WebServlet("/Pony19")
public class Pony19 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String x = (String)request.getAttribute("x");
		String y = (String)request.getAttribute("y");
		String result = (String)request.getAttribute("result");
		String view = (String)request.getAttribute("view");
		
		try {
			String webContent = Ponyutils.loadView(view);
			String web = webContent.replaceAll("@x@", x)
					.replaceAll("@y@", y)
					.replaceAll("@result@", result);
			response.getWriter().print(web);
		}catch(Exception e) {
			System.out.println(e);
		}
	
	
	}

}