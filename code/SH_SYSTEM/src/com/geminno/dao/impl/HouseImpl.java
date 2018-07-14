package com.geminno.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.geminno.dao.HouseDao;
import com.geminno.pojo.House;
@Repository
public class HouseImpl implements HouseDao{
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
	public void addHouse(House house) {
		// TODO Auto-generated method stub
		Session session=getSession();
		
		session.save(house);
	}

	@Override
	public void updateHouse(House house) {
		// TODO Auto-generated method stub
		Session session=getSession();
		
		session.update(house);
	}

	@Override
	public void deleteHouse(int houseId) {
		// TODO Auto-generated method stub
		Session session=getSession();
		House house=(House) session.get(House.class, houseId);
		session.delete(house);
	}

	@Override
	public House getHouseById(int houseId) {
		Session session=getSession();
		House house=(House) session.get(House.class, houseId);
		// TODO Auto-generated method stub
		return house;
	}

	@Override
	public List<House> queryHouse() {
		Session session=getSession();
		Query query=session.createQuery("from House");
		List<House> houses=query.list();
		System.out.println("houses:"+houses);
		// TODO Auto-generated method stub
		return houses;
	}

}
