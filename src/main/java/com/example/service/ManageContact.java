package com.example.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.config.SingletonDao;
import com.example.entity.Contact;
import com.example.entity.User;

@WebServlet("/manage_contact")
public class ManageContact extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		User user =(User) session.getAttribute("user");
		List<Contact> list = SingletonDao.getContactDao().listOfContacts(user);
		if(list!=null) {
			req.setAttribute("list", list);
			req.getRequestDispatcher("manage_contact.jsp").forward(req, resp);
		}else {
			req.setAttribute("error", "No Contacts Found!!");
			req.getRequestDispatcher("home.jsp").forward(req, resp);
		}
	}
}
