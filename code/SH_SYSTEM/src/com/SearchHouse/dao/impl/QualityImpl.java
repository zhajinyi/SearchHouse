package com.SearchHouse.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SearchHouse.dao.QualityDao;
import com.SearchHouse.pojo.Quality;
@Repository
public class QualityImpl implements QualityDao {
	
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
	public void updateQuality(Quality quality) {
		// TODO Auto-generated method stub
		Session session=getSession();
		session.update(quality);
	}

	@Override
	public void deleteQuality(Integer qualityId) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Quality quality=(Quality) session.get(Quality.class, qualityId);
		
		session.delete(quality);
	}

	@Override
	public Quality getQualityById(Integer qualityId) {
		// TODO Auto-generated method stub
		
		Session session=getSession();
		Quality quality=(Quality) session.get(Quality.class, qualityId);
		
		return quality;
	}

	@Override
	public List<Quality> queryAllQualities() {
		// TODO Auto-generated method stub
		Session session=getSession();
		
		Query query = session.createQuery("from Quality q left join fetch q.user");
		
		List<Quality> qualities=query.list();
		
		return qualities;
	}

}
