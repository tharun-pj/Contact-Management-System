package com.example.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.config.SingletonDao;
import com.example.entity.Contact;

@WebServlet("/update")
public class UpdateContact extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("contactId"));
		String name = req.getParameter("contactName");
		long number = Long.parseLong(req.getParameter("contactNumber"));
		Contact contact = SingletonDao.getContactDao().getContact(id);
		contact.setContactName(name);
		contact.setContactNumber(number);

		boolean res = SingletonDao.getContactDao().updateContact(contact);
		if(res) {
			resp.sendRedirect("manage_contact");
		}

	}

}
