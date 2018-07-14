package com.geminno.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.geminno.dao.MessageDao;
import com.geminno.pojo.Message;
@Repository
public class MessageImpl implements MessageDao {
	
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
	public void addMsg(Message msg) {
		Session session=getSession();
		session.save(msg);
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int msgId) {
		Session session=getSession();
		Message msg=(Message) session.get(Message.class, msgId);
		session.delete(msg);
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Message msg) {
		
		Session session=getSession();
		session.update(msg);
		// TODO Auto-generated method stub

	}

	@Override
	public Message getMsgById(int msgId) {
		Session session=getSession();
		Message msg=(Message) session.get(Message.class, msgId);
		return msg;
	}

	@Override
	public List<Message> queryAllMessage() {
		Session session=getSession();
		Query query = session.createQuery("from Message");
		List<Message> msgs=query.list();
		
		
		// TODO Auto-generated method stub
		return msgs;
	}

}
