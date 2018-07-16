package com.SearchHouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SearchHouse.dao.BedRoomDao;
import com.SearchHouse.pojo.BedRoom;
import com.SearchHouse.service.BedRoomService;
@Service
public class BedRoomServiceImpl implements BedRoomService {
@Autowired
BedRoomDao bedroomdao;




	public BedRoomDao getBedroomdao() {
	return bedroomdao;
}

public void setBedroomdao(BedRoomDao bedroomdao) {
	this.bedroomdao = bedroomdao;
}

	@Override
	public void addBedRoom(BedRoom bedroom) {
		bedroomdao.addBedRoom(bedroom);
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteRoom(int bedroomId) {
		bedroomdao.deleteRoom(bedroomId);
		// TODO Auto-generated method stub

	}

	@Override
	public void updateRoom(BedRoom bedroom) {
		bedroomdao.updateRoom(bedroom);
		// TODO Auto-generated method stub

	}

	@Override
	public BedRoom getRoomById(int bedroomId) {
		
		// TODO Auto-generated method stub
		return bedroomdao.getRoomById(bedroomId);
	}

	@Override
	public List<BedRoom> queryAllRoom() {
		
		// TODO Auto-generated method stub
		return bedroomdao.queryAllRoom();
	}

}
