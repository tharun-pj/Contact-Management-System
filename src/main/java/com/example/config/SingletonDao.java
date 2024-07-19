package com.example.config;

import com.example.dao.ContactDao;
import com.example.dao.UserDao;

public class SingletonDao {

	private static UserDao userDao;
	private static ContactDao contactDao;
	
	private SingletonDao() {
		//private constructor to avoid instantiation(object creation)
	}
	
	public static synchronized UserDao getUserDao() {
		if(userDao==null) {
			userDao=new UserDao();
		}
		return userDao;
	}
	
	public static synchronized ContactDao getContactDao() {
		if(contactDao==null) {
			contactDao= new ContactDao();
		}
		return contactDao;
	}
}
