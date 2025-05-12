package tw.pony.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.sun.net.httpserver.Request;

@WebServlet("/Pony07")
public class Pony07 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String account = req.getParameter("account");
		String passwd = req.getParameter("passwd");
		String gender = req.getParameter("gender");
		String[] habits = req.getParameterValues("Habits");
		System.out.printf("%s",gender);
		try {
		for(String habit:habits) {
			System.out.println(habit);
		}
		}catch(Exception e){
			
		}
		System.out.printf("Pony07:doPost:%s:%s:%s:s\n",account,passwd,gender,habits);
	}
}