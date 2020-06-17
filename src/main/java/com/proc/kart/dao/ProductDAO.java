package com.proc.kart.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.proc.kart.model.Product; 
 
@Repository
public class ProductDAO {

	@Autowired
	SessionFactory sf; 
	
	@Transactional
	public Product getProduct(int pid) {
		
		Session session = sf.getCurrentSession();
		
		//Product product = new Product();
		//product.setName("Dell");
		//product.setSaleprice(30.00);
		
		//Transaction tx = session.beginTransaction();
		//HibernateTransactionManager tx = getTransactionManager(sf);
		 
		//session.save(product);
		
		
		 
		session = sf.getCurrentSession();
		Product product = (Product)session.get(Product.class, pid);
		
		
		return product;
		
	}
	
}
