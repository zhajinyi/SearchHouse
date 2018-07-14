package com.geminno.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.geminno.dao.FitmentDao;
import com.geminno.pojo.Fitment;
@Repository
public class FirmentImpl implements FitmentDao {
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
	public void addFitment(Fitment fitment) {
		// TODO Auto-generated method stub
		Session session=getSession();
		session.save(fitment);
	}

	@Override
	public void deleteFitment(int fitmentId) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Fitment fitment=(Fitment) session.get(Fitment.class, fitmentId);
		session.delete(fitment);
	}

	@Override
	public void updateFitment(Fitment fitment) {
		// TODO Auto-generated method stub
		Session session=getSession();
		session.update(fitment);
	}

	@Override
	public Fitment getFitmentById(int fitmentId) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Fitment fitment=(Fitment) session.get(Fitment.class, fitmentId);
		return null;
	}

	@Override
	public List<Fitment> queryAllFitment() {
		// TODO Auto-generated method stub
		Session session=getSession();
		Query query=session.createQuery("from Fitment");
		
		List<Fitment> fitments=query.list();
		return fitments;
	}

}
