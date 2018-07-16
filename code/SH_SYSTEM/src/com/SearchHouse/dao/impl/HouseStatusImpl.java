package com.SearchHouse.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SearchHouse.dao.HouseStatusDao;
import com.SearchHouse.pojo.HouseStatus;
@Repository
public class HouseStatusImpl implements HouseStatusDao{
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
	public void addHouseStatus(HouseStatus housestatus) {
		Session session=getSession();
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteHouseStatus(int houseStatusId) {
		Session session=getSession();
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateHouseStatus(HouseStatus housestatus) {
		Session session=getSession();
		// TODO Auto-generated method stub
		
	}

	@Override
	public HouseStatus getHouseStatusById(int houseStatusId) {
		Session session=getSession();
		HouseStatus housestatus=(HouseStatus) session.get(HouseStatus.class, houseStatusId);
		// TODO Auto-generated method stub
		return housestatus;
	}

	@Override
	public List<HouseStatus> queryAllHouseStatus() {
		Session session=getSession();
		Query query=session.createQuery("from housestatus");
		
		List<HouseStatus> housestatuss=query.list();
		
		return housestatuss;
	}

}
