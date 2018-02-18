package com.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Category;

@SuppressWarnings("deprecation")
@Repository("categoryDAO")
public class CategoryDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDao(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	
	
	//@Transactional
	public void insertCategory(Category category)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
         
		session.saveOrUpdate(category);
		session.getTransaction().commit();
		//session.getTransaction().commit();
		//session.close();
		
	}
	
	
	//@Transactional
	public List<Category> retrieve()
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		//session.find();
		
		@SuppressWarnings("unchecked")
		List<Category> list=session.createQuery("from Category").list();
		//session.close();
		session.getTransaction().commit();
		//session.flush();
		return list;
	}
	
	
	public List<Category> list(Integer offset, Integer maxResults){
		sessionFactory.openSession().getTransaction().begin(); 
		return sessionFactory.openSession()
		    .createCriteria(Category.class)
		    .setFirstResult(offset!=null?offset:0)
		    .setMaxResults(maxResults!=null?maxResults:10)
		    .list();
		//sessionFactory.getCurrentSession().getTransaction().commit();
		 }
	
	
	
	public Long count(){
		  return (Long)sessionFactory.openSession()
		    .createCriteria(Category.class)
		    .setProjection(Projections.rowCount())
		    .uniqueResult();
		 }
	
	
	public void save(){
		  for(int itr=1;itr <= 100 ; itr++){
			  Category category = new Category();
		   sessionFactory.openSession().save(category);
		  }
	}
	
	
	
		
	public void deleteCategory(int catid)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();

		Category category=(Category)session.get(Category.class,catid);
		session.delete(category);
		session.getTransaction().commit();

	}
	
	
	
	public Category findbyId(int id) {

		Session session=sessionFactory.openSession();
		Category p=null;
		try{
			session.beginTransaction();
		 p=	session.get(Category.class, id);
		session.getTransaction().commit();
			
			
		}catch(HibernateException ex){
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		return p;
	
	}
	
	public void update(Category c) {
		
		Session session=sessionFactory.getCurrentSession();
		
		try{
			session.beginTransaction();
			session.update(c);
			
		}catch(HibernateException ex){
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		
		
	}
	
	
	
}
