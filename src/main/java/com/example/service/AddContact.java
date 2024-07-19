package com.example.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.config.SingletonDao;
import com.example.dao.ContactDao;
import com.example.entity.Contact;
import com.example.entity.User;

@WebServlet("/addcontact")
public class AddContact extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String contactName = req.getParameter("contactName");
		Long contactNumber =Long.parseLong(req.getParameter("contactNumber"));
		HttpSession session = req.getSession(true);
		User user =(User) session.getAttribute("user");
		
		Contact contact = new Contact();
		contact.setContactName(contactName);
		contact.setContactNumber(contactNumber);
		contact.setUser(user);
		
		boolean result = SingletonDao.getContactDao().saveContact(contact);
		
		if(result) {
			//success
			resp.sendRedirect("home.jsp");
		}
		else {
			//failure
			req.setAttribute("failed", "failed to add contact!!");
			req.getRequestDispatcher("home.jsp").forward(req, resp);
		}
	}
}
