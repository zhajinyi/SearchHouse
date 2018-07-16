package com.SearchHouse.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SearchHouse.dao.PayDao;
import com.SearchHouse.pojo.Pay;
@Repository
public class PayImpl implements PayDao {
	
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
	public void addPay(Pay pay) {
		Session session=getSession();
		session.save(pay);
		// TODO Auto-generated method stub

	}

	@Override
	public void deletePay(int payId) {
		Session session=getSession();
		Pay pay = (Pay) session.get(Pay.class, payId);
		session.delete(pay);
		// TODO Auto-generated method stub

	}

	@Override
	public void updatePay(Pay pay) {
		Session session=getSession();
		session.update(pay);
		// TODO Auto-generated method stub

	}

	@Override
	public Pay getPayById(int payId) {
		Session session=getSession();
		Pay pay = (Pay) session.get(Pay.class, payId);
		// TODO Auto-generated method stub
		return pay;
	}

	@Override
	public List<Pay> queryAllPay() {
		Session session=getSession();
		Query query = session.createQuery("from Pay");
		
		List<Pay> pays=query.list();
			
		// TODO Auto-generated method stub
		return pays;
	}

}
