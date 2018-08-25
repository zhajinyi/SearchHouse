package com.SearchHouse.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SearchHouse.dao.AdminDao;
import com.SearchHouse.pojo.Administrator;

@Repository
public class AdminImpl implements AdminDao{
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
	public void addAdmin(Administrator admin) {
		// TODO Auto-generated method stub
		Session session=getSession();
		session.save(admin);
	}

	@Override
	public void deleteAdmin(String adminId) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Administrator admin=(Administrator) session.get(Administrator.class, adminId);
		session.delete(admin);
	}

	@Override
	public void updateAdmin(Administrator admin) {
		// TODO Auto-generated method stub
		Session session=getSession();
		session.update(admin);
	}

	@Override
	public Administrator getAdminById(String adminId) {
		// TODO Auto-generated method stub
		
		Session session=getSession();
		Administrator admin=(Administrator) session.get(Administrator.class, adminId);
		return admin;
	}

	@Override
	public List<Administrator> queryAllAdmin() {
		// TODO Auto-generated method stub
		Session session=getSession();
		Query query=session.createQuery("from Admin");
		List<Administrator> admins=query.list();
		
		return admins;
	}

}
