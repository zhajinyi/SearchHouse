package com.SearchHouse.mapper;

import java.util.List;

import com.SearchHouse.pojo.HouseSetType;

public interface HouseSetTypeMapper {
	public List<HouseSetType> getAllHouseType();

	public HouseSetType getHouseSetTypeById(Integer houseSetTypeId);
}
