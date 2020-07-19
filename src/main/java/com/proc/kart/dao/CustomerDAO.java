package com.proc.kart.dao;
  

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.proc.kart.model.Customer;

@Repository
@EnableTransactionManagement 
public class CustomerDAO {

	@Autowired
	SessionFactory factory;
	
	@Transactional
	public int persistCustomer(Customer customer) {
		
		Session session = factory.getCurrentSession(); 
		
		session.save(customer) ;
		 
		//Session close, transaction commit are handeled by @Transaction - no need to write manually - will throw exception.
		//session.close(); //Do not use - Cause exception - Commit exception overridden by rollback exception  
		return customer.getId();
	}
	
	@Transactional
	public Customer getCustomer(int id) {
		Session session = factory.getCurrentSession();
		Customer customer = (Customer) session.get(Customer.class, id);
		return customer;
	}
	 
}
