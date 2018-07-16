package com.SearchHouse.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SearchHouse.dao.UserInfoDao;
import com.SearchHouse.pojo.User;

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
	public void addUserInfo(User user) {
		Session session=getSession();
		session.save(user);
		
	}

	@Override
	public void deleteUserInfo(String userId) {
		Session session=getSession();
		User user=(User) session.get(User.class, userId);
		session.delete(user);
	}

	@Override
	public void updateUserInfo(User user) {
		Session session=getSession();
		session.update(user);
		
	}

	@Override
	public User getUserById(String userId) {
		Session session=getSession();
		
		User user=(User) session.get(User.class, userId);
		
		return user;
	}

	@Override
	public List<User> getAllUsers() {
		Session session=getSession();
		Query query=session.createQuery("from User");
		List<User> users=query.list();
		
		return users;
	}

}
