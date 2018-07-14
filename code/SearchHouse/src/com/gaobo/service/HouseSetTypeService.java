package com.gaobo.service;

import java.util.List;

import com.gaobo.pojo.HouseSetType;

public interface HouseSetTypeService {
	public List<HouseSetType> getAllHouseType();

	public HouseSetType getHouseSetTypeById(Integer houseSetTypeId);
}
