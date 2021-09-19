package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.UserDAO;
import com.db.DBConnect;
import com.entites.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@WebServlet("/RegisterServlet")
public class registerServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		User us=new User();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		UserDAO dao=new UserDAO(DBConnect.getConnection());
		boolean f=dao.userRegister(us);
		if(true) {
			HttpSession session=request.getSession();
			session.setAttribute("reg-msg", "registration succeessfully");
			response.sendRedirect("register.jsp");
		}else {
			HttpSession session=request.getSession();
			session.setAttribute("reg-msg", "something went wrong");
			response.sendRedirect("register.jsp");
		}

	}

}
