package com.example.config;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EMFSingleton {

	private static EntityManagerFactory factory;
	
	private EMFSingleton() {
		//private constructor to avoid instantiation(object creation)	
	}
	
	public static synchronized EntityManagerFactory getFactory() {
		if(factory==null) {
			factory=Persistence.createEntityManagerFactory("cms");
		}
		return factory;
	}
}
