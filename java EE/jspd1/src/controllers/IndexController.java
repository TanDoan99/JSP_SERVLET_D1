package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;
//annotation (đường dẫn)
//@WebServlet("/IndexController")//config URL web 2.3
/*
 * - CONFIG WEB.XML
 * -LÀM QUEN CÁCH CONFIG SPRING FRAMEWORK
 * 
 * */
public class IndexController extends HttpServlet {
	/*
	 * servlet:
	 * 1.Bản chất servlet là một file java
	 * 2. Đang kế thừa từ HttpServlet cho nên nó có thể chạy được với server
	 * 3. client - server(request, response)
	 * */
	private static final long serialVersionUID = 1L;
       
    public IndexController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		
		out.print("hello Java Serverlet...!<br/>");
		out.print("Xin chào JSP/Servlet<br/>");
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		response.getWriter().print(showName("Tan Doan"));
	}
	public String showName(String name) {
		return "Hello,"+name;
	}

}
