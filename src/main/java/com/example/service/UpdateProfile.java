package com.example.service;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.config.SingletonDao;
import com.example.entity.User;


@WebServlet("/update_profile")
public class UpdateProfile extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		HttpSession session = req.getSession(true);
		User user =(User) session.getAttribute("user");
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		
		boolean result = SingletonDao.getUserDao().updateUser(user);
		if(result) {
			resp.sendRedirect("manage_profile.jsp");
		}else {
			req.setAttribute("error", "Failed to update!!");
			req.getRequestDispatcher("ipdate_profile.jsp").forward(req, resp);
		}
	}
}
