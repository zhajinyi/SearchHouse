package com.SearchHouse.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SearchHouse.dao.LimitDao;
import com.SearchHouse.pojo.Limit;
@Repository
public class LimitImpl implements LimitDao{
	
	
	@Autowired
	SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addLimit(Limit limit) {
		Session session=getSession();
		session.save(limit);
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateLimit(Limit limit) {
		Session session=getSession();
		session.update(limit);
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteLimit(int limitId) {
		Session session=getSession();
		Limit limit = (Limit) session.get(Limit.class, limitId);
		session.delete(limit);
		// TODO Auto-generated method stub
		
	}

	@Override
	public Limit getLimitById(int limitId) {
		Session session=getSession();
		Limit limit = (Limit) session.get(Limit.class, limitId);
		session.delete(limit);
		// TODO Auto-generated method stub
		return limit;
	}

	@Override
	public List<Limit> queryAllLimit() {
		Session session=getSession();
		Query query = session.createQuery("from Limit");
		
		List<Limit> limits = query.list();
		// TODO Auto-generated method stub
		return limits;
	}

}
