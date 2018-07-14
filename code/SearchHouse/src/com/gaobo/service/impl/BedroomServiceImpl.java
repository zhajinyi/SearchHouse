package com.gaobo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gaobo.mapper.BedroomMapper;
import com.gaobo.pojo.BedRoom;
import com.gaobo.service.BedroomService;

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
