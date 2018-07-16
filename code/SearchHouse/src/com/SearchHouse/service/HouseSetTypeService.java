package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.HouseSetType;

public interface HouseSetTypeService {
	public List<HouseSetType> getAllHouseType();

	public HouseSetType getHouseSetTypeById(Integer houseSetTypeId);
}
