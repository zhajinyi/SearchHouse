package com.geminno.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.geminno.dao.HouseSetTypeDao;
import com.geminno.pojo.HouseSetType;
@Repository
public class HouseSetTypeImpl implements HouseSetTypeDao {
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
	public void addHouseSetType(HouseSetType housesettype) {
		Session session=getSession();
		session.save(housesettype);
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteHouseSetType(int houseSetTypeId) {
		Session session=getSession();
		HouseSetType housesettype=(HouseSetType) session.get(HouseSetType.class, houseSetTypeId);
		session.delete(housesettype);
		// TODO Auto-generated method stub

	}

	@Override
	public void updateHouseSetType(HouseSetType housesettype) {
		Session session=getSession();
		session.update(housesettype);
		// TODO Auto-generated method stub

	}

	@Override
	public HouseSetType getById(int houseSetTypeId) {
		Session session=getSession();
		HouseSetType housesettype=(HouseSetType) session.get(HouseSetType.class, houseSetTypeId);
		
		// TODO Auto-generated method stub
		return housesettype;
	}

	@Override
	public List<HouseSetType> queryAllHouseSetType() {
		Session session=getSession();
		Query query = session.createQuery("from HouseSetType");
		List<HouseSetType> housesettypes=query.list();
		// TODO Auto-generated method stub
		return housesettypes;
	}

}
