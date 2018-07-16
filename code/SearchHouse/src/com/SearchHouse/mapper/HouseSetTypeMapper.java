package com.gaobo.mapper;

import java.util.List;

import com.gaobo.pojo.HouseSetType;

public interface HouseSetTypeMapper {
	public List<HouseSetType> getAllHouseType();

	public HouseSetType getHouseSetTypeById(Integer houseSetTypeId);
}
