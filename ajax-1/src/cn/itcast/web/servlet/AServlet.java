package cn.itcast.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println("Hello AJAX!");
		PrintWriter out = response.getWriter();
		out.write("你好");
		out.close();
		//response.getWriter().print("Hello AJAX!!!");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");

		String username = request.getParameter("username");// 获取请求参数
		System.out.println("(POST：) Hello AJAX!" + username);
		response.getWriter().print("(POST：) Hello AJAX!!!" + username);
	}
}
