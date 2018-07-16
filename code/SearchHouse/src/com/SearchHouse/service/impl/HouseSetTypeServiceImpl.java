package com.SearchHouse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SearchHouse.mapper.HouseSetTypeMapper;
import com.SearchHouse.pojo.HouseSetType;
import com.SearchHouse.service.HouseSetTypeService;

@Service
@Transactional
public class HouseSetTypeServiceImpl implements HouseSetTypeService {
	@Resource
	HouseSetTypeMapper houseSetTypeMapper;

	public HouseSetTypeMapper getHouseSetTypeMapper() {
		return houseSetTypeMapper;
	}

	public void setHouseSetTypeMapper(HouseSetTypeMapper houseSetTypeMapper) {
		this.houseSetTypeMapper = houseSetTypeMapper;
	}

	@Override
	public List<HouseSetType> getAllHouseType() {
		// TODO Auto-generated method stub
		return houseSetTypeMapper.getAllHouseType();
	}

	@Override
	public HouseSetType getHouseSetTypeById(Integer houseSetTypeId) {
		// TODO Auto-generated method stub
		return houseSetTypeMapper.getHouseSetTypeById(houseSetTypeId);
	}
}
