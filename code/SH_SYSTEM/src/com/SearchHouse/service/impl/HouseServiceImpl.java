package com.SearchHouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SearchHouse.dao.HouseDao;
import com.SearchHouse.pojo.House;
import com.SearchHouse.service.HouseService;
@Service
public class HouseServiceImpl implements HouseService{

	@Autowired
	HouseDao housedao;
	
	public HouseDao getHousedao() {
		return housedao;
	}

	public void setHousedao(HouseDao housedao) {
		this.housedao = housedao;
	}

	@Override
	public void addHouse(House house) {
		// TODO Auto-generated method stub
		housedao.addHouse(house);	
	}

	@Override
	public void updateHouse(House house) {
		// TODO Auto-generated method stub
		housedao.updateHouse(house);
	}

	@Override
	public void deleteHouse(int houseId) {
		// TODO Auto-generated method stub
		housedao.deleteHouse(houseId);
	}

	@Override
	public House getHouseById(int houseId) {
		// TODO Auto-generated method stub
		return housedao.getHouseById(houseId);
	}

	@Override
	public List<House> queryHouse() {
		// TODO Auto-generated method stub
		return housedao.queryHouse();
	}

}
