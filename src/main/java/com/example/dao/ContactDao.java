package com.example.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.example.config.EMFSingleton;
import com.example.entity.Contact;
import com.example.entity.User;

public class ContactDao {

	public boolean saveContact(Contact contact) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.persist(contact);
			transaction.commit();
			return true;
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			manager.close();
		}
	}
	public boolean updateContact(Contact contact) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.merge(contact);
			transaction.commit();
			return true;
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			manager.close();
		}
	} 
	public boolean deleteContact(int id) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			Contact contact = manager.find(Contact.class, id);
			manager.remove(contact);
			transaction.commit();
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			manager.close();
		}
		return true;
	}
	public Contact findUser(int id) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		Contact contact = manager.find(Contact.class, id);
		manager.close();
		return contact;
	}
	public List<Contact> listOfContacts(User user){
		
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		List<Contact> list=null;
		try {
			TypedQuery<Contact> query = manager.createQuery("from Contact c where c.user= :contactId",Contact.class);
			query.setParameter("contactId",user);
			list=query.getResultList();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			manager.close();
		}
		return list;
	}
	
	public Contact getContact(int id) {
		EntityManager manager = EMFSingleton.getFactory().createEntityManager();
		Contact contact = manager.find(Contact.class, id);
		manager.close();
		return contact;
	}
}
