package com.inc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inc.dao.UsersDao;
import com.inc.vo.UsersVo;

@WebServlet("/users/signup")
public class SignupServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("signup.jsp")
			   .forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int id = 0;
		String id2 = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		
		UsersVo uvo = new UsersVo(id, id2, name,password);
		
		UsersDao.getInstance().signup(uvo);
		request.setAttribute("msg", 
			"회원가입이 정상적으로 완료되었습니다. 메인페이지로 이동합니다.");
		request.setAttribute("url", "../main");
		request.getRequestDispatcher("../alert.jsp")
		       .forward(request, response);
		
	}

}





