package com.SearchHouse.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SearchHouse.dao.IndentDao;
import com.SearchHouse.pojo.Indent;
@Repository
public class IndentImpl implements IndentDao{
	
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
	public void deleteIndent(Integer indentId) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Indent indent=(Indent) session.get(Indent.class, indentId);
		session.delete(indent);
	}

	@Override
	public void updateIndent(Indent indent) {
		// TODO Auto-generated method stub
		Session session=getSession();
		session.update(indent);
	}

	@Override
	public Indent getIndentById(Integer indentId) {
		Session session=getSession();
		Indent indent=(Indent) session.get(Indent.class, indentId);
		return indent;
	}

	@Override
	public List<Indent> queryAllIndents() {
		// TODO Auto-generated method stub
		
		Session session=getSession();
		Query query = session.createQuery("from Indent");
		
		List<Indent> indents=query.list();
		
		System.out.println("indents:"+indents);
		return indents;
	}

}
