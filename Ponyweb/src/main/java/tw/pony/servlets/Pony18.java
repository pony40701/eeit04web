package tw.pony.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tw.pony.apis.Ponyutils;

import java.io.IOException;

@WebServlet("/Pony18")
public class Pony18 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String x = (String)request.getAttribute("x");
		String y = (String)request.getAttribute("y");
		String result = (String)request.getAttribute("result");
		String view = (String)request.getAttribute("view");
		
		try {
			String webContent = Ponyutils.loadView(view);
			response.getWriter().print(String.format(webContent, x, y,result));
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}
