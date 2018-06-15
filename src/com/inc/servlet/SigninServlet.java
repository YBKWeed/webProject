package com.inc.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inc.dao.UsersDao;
import com.inc.vo.UsersVo;

@WebServlet("/users/signin")
public class SigninServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("signin.jsp")
		       .forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id2 = request.getParameter("id");
		String password = request.getParameter("password");
		UsersVo uvo = UsersDao.getInstance().selectOne(id2);
		if(uvo == null) {
			request.setAttribute("msg", "존재하지 않는 아이디 입니다.");
			request.setAttribute("url", request.getContextPath()+"/users/signin");
			request.getRequestDispatcher("/alert.jsp").forward(request, response);
		}else if(!uvo.getPassword().equals(password)) {
			request.setAttribute("msg", "비밀번호가 일치하지 않습니다.");
			request.setAttribute("url", request.getContextPath()+"/users/signin");
			request.getRequestDispatcher("/alert.jsp") .forward(request, response);
		}else {
			//로그인
			request.getSession().setAttribute("id", uvo.getId());
			request.getSession().setAttribute("id2", uvo.getId2());
			response.sendRedirect(request.getContextPath()+"/main");
		}
	}

}








