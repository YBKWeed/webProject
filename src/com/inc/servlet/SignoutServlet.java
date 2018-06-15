package com.inc.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users/signout")
public class SignoutServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.getSession().setAttribute("id", null);
		//request.getSession().setAttribute("name", null);
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath()+"/main");
	}

}





