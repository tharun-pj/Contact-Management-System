package com.example.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.config.SingletonDao;
import com.example.entity.Contact;

@WebServlet("/edit_contact")
public class EditContact extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("contactId"));
		Contact contact = SingletonDao.getContactDao().getContact(id);
		if(contact!=null) {
			req.setAttribute("record", contact);
			req.getRequestDispatcher("update_contact.jsp").forward(req, resp);
		}else {
			req.setAttribute("error", "contact not found!!");
			req.getRequestDispatcher("manage_contact.jsp").forward(req, resp);
		}
	}
}
