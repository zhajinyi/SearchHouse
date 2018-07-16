package com.SearchHouse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SearchHouse.mapper.BedroomMapper;
import com.SearchHouse.pojo.BedRoom;
import com.SearchHouse.service.BedroomService;

@Service
@Transactional
public class BedroomServiceImpl implements BedroomService {
	@Resource
	BedroomMapper bedroomMapper;

	public BedroomMapper getBedroomMapper() {
		return bedroomMapper;
	}

	public void setBedroomMapper(BedroomMapper bedroomMapper) {
		this.bedroomMapper = bedroomMapper;
	}

	@Override
	public List<BedRoom> getAllBedroom() {
		// TODO Auto-generated method stub
		return bedroomMapper.getAllBedroom();
	}

	@Override
	public BedRoom getBedRoomById(Integer bedroomIdFk) {
		// TODO Auto-generated method stub
		return bedroomMapper.getBedRoomById(bedroomIdFk);
	}

}
