package com.SearchHouse.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SearchHouse.dao.UserInfoDao;
import com.SearchHouse.pojo.User1;

@Repository
public class UserInfoImpl implements UserInfoDao{
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
	public void addUserInfo(User1 user) {
		Session session=getSession();
		session.save(user);
		
	}

	@Override
	public void deleteUserInfo(String userId) {
		Session session=getSession();
		User1 user=(User1) session.get(User1.class, userId);
		session.delete(user);
	}

	@Override
	public void updateUserInfo(User1 user) {
		Session session=getSession();
		session.update(user);
		
	}

	@Override
	public User1 getUserById(String userId) {
		Session session=getSession();
		
		User1 user=(User1) session.get(User1.class, userId);
		
		return user;
	}

	@Override
	public List<User1> getAllUsers() {
		Session session=getSession();
		Query query=session.createQuery("from User");
		List<User1> users=query.list();
		
		return users;
	}

}
