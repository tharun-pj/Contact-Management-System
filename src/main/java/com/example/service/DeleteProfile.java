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

@WebServlet("/delete_profile")
public class DeleteProfile extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession(true);
		User user = (User) session.getAttribute("user");
		int id = user.getUserId();
		boolean result = SingletonDao.getUserDao().deleteUser(id);
		if(result) {
			session.removeAttribute("user");
			resp.sendRedirect("home.jsp");
		}
		else {
			req.setAttribute("error", "unable to delete user");
			req.getRequestDispatcher("manage_profile.jsp").forward(req, resp);
		}
	}
}
