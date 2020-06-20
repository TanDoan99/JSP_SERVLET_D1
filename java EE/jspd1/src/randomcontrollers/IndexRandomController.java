package randomcontrollers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IndexRandomController")
public class IndexRandomController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public IndexRandomController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		//response.getWriter: tên_Phương_thức(response.getWriter()); lấy giá trị phương thức mới
		chanLe(response.getWriter());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	//PrintWriter out: khai báo lệnh in
	private void chanLe(PrintWriter out) {
		
		Random rd=new Random();
		
		int a=0,b=0,tong=0;
		a=rd.nextInt(101);
		b=rd.nextInt(101);
		out.print("<h3 style='color:green;front-style:italic'> số thứ 1:" + a+"</h3>");
		out.print("<h3 style='color:green;front-style:italic'> số thứ 2:"+ b+"</h3>");
		tong=a+b;
		if (tong%2==0) {
			out.print("<p style='color:red;front-weight:bold'>Số :"+tong+ " là chẵn</p>");
		}else {
			out.print("<p style='color:red;front-weight:bold'>Số :"+tong+ " là lẻ</p>");
		}
		
		
		
		
	}
}
