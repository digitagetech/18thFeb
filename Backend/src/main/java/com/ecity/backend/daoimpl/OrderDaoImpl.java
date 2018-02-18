package com.ecity.backend.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.ecity.backend.dao.OrdersDao;
import com.ecity.backend.model.Orders;

public class OrderDaoImpl implements OrdersDao{

	@Autowired
	SessionFactory sessionFactory;
	

	public OrderDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	public void addOrder(Orders order) {
		
		Session session=sessionFactory.openSession();
		session.beginTransaction();
         
		session.saveOrUpdate(order);
		session.getTransaction().commit();
	}

}
