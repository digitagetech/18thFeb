package com.daoimpl;

import java.io.IOException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.dao.CartDao;
import com.dao.OrdersDao;
import com.model.CartModel;
import com.model.Category;
import com.model.Product;



public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;
	

	public CartDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	

	public void insert(CartModel cart) {

		Session session=sessionFactory.openSession();
		session.beginTransaction();
        // product.setImgcount(imgcount);
		session.persist(cart);
		
		session.getTransaction().commit();
		//session.getTransaction().commit();
		//session.close();
		
		
	}
	
	
	public List<CartModel> findCartById(String userId){
		
		Session session=sessionFactory.openSession();
		List<CartModel> p=null;
		try{
			session.beginTransaction();
		 /*p=	session.get(CartModel.class, userId);*/
		/*p=	(CartModel) session.createQuery("from CartModel where userMailId="+userId).uniqueResult();*/
		
		p=	(List<CartModel>) session.createQuery(" from CartModel  where userMailId = :email")
	           .setString("email", userId).list();
			session.getTransaction().commit();
			
			
		}catch(HibernateException ex){
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		return  p;
	
		
		
		
	}




	public void delete(int cartId) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();

		CartModel cart=(CartModel)session.get(CartModel.class,cartId);
		session.delete(cart);
		session.getTransaction().commit();
		
	}




	public void update(CartModel cart) {
		Session session=sessionFactory.openSession();
		
		
		session.beginTransaction();


		session.update(cart);
		session.getTransaction().commit();
	
	
	}




	public CartModel getCartById(int pid, String userEmail) {
		Session session=sessionFactory.openSession();
		CartModel cm=(CartModel)session.createQuery(" from CartModel  where userMailId = :email and cartproductid=:id")
				.setString("email", userEmail).setInteger("id", pid).uniqueResult();
		return cm;
	}
	
	
	
	
	
	
 
	  
}