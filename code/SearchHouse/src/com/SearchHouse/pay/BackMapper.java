package com.SearchHouse.pay;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BackMapper {

	@RequestMapping("backServlet")
	public void backMoney(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String r1_Code = request.getParameter("r1_Code");
		PrintWriter pw = null;
		try {
			pw = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if ("1".equals(r1_Code)) {
			String p1_MerId = request.getParameter("p1_MerId");
			String r3_Amt = request.getParameter("r3_Amt");
			String r6_Order = request.getParameter("r6_Order");
			String rp_PayDate = request.getParameter("rp_PayDate");

			HttpSession session = request.getSession();
			session.setAttribute("p1_MerId", p1_MerId);
			session.setAttribute("r3_Amt", r3_Amt);
			session.setAttribute("r6_Order", r6_Order);
			session.setAttribute("rp_PayDate", rp_PayDate);

			try {
				request.getRequestDispatcher("page/back.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			request.getRequestDispatcher("page/failure.jsp").forward(request, response);
			// pw.println("Ö§¸¶Ê§°Ü£¡");
		}
	}
}
