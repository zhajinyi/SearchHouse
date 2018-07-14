package com.geminno.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.geminno.dao.BedRoomDao;
import com.geminno.pojo.BedRoom;
@Repository
public class BedRoomImpl implements BedRoomDao {
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
	public void addBedRoom(BedRoom bedroom) {
		// TODO Auto-generated method stub
		Session session=getSession();
		session.save(bedroom);
	}

	@Override
	public void deleteRoom(int bedroomId) {
		// TODO Auto-generated method stub
		Session session=getSession();
		
		BedRoom bedroom=(BedRoom) session.get(BedRoom.class, bedroomId);
		session.delete(bedroom);
	}

	@Override
	public void updateRoom(BedRoom bedroom) {
		// TODO Auto-generated method stub
		Session session=getSession();
		
		session.update(bedroom);
	}

	@Override
	public BedRoom getRoomById(int bedroomId) {
		Session session=getSession();
		BedRoom bedroom=(BedRoom) session.get(BedRoom.class, bedroomId);
		return bedroom;
	}

	@Override
	public List<BedRoom> queryAllRoom() {
		Session session=getSession();
		Query query=session.createQuery("from Bedroom");
		
		List<BedRoom> bedrooms=query.list();
		// TODO Auto-generated method stub
		return bedrooms;
	}

}
