package com.SearchHouse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SearchHouse.mapper.House2Mapper;
import com.SearchHouse.pojo.House;
import com.SearchHouse.service.House2Service;

@Service
@Transactional
public class House2ServiceImpl implements House2Service {

	@Resource
	House2Mapper house2Mapper;

	public House2Mapper getHouse2Mapper() {
		return house2Mapper;
	}

	public void setHouse2Mapper(House2Mapper house2Mapper) {
		this.house2Mapper = house2Mapper;
	}

	@Override
	public List<House> getHouseByKey1(String keyName) {
		// TODO Auto-generated method stub
		return house2Mapper.getHouseByKey1(keyName);
	}

	@Override
	public House getHouseById(int houseId) {
		// TODO Auto-generated method stub
		return house2Mapper.getHouseById(houseId);
	}

}
