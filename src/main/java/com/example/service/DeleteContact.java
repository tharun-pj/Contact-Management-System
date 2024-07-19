package com.example.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.config.SingletonDao;

@WebServlet("/delete_contact")
public class DeleteContact extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("contactId"));
		boolean res = SingletonDao.getContactDao().deleteContact(id);
		if(res) {
			resp.sendRedirect("manage_contact");
		}
	}
}
