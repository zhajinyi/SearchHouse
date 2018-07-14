package com.geminno.dao;

import java.util.List;

import com.geminno.pojo.HouseSetType;

public interface HouseSetTypeDao {
	
	public void addHouseSetType(HouseSetType housesettype);
	
	public void deleteHouseSetType(int houseSetTypeId);
	
	public void updateHouseSetType(HouseSetType housesettype);
	
	public HouseSetType getById(int houseSetTypeId);
	
	public List<HouseSetType> queryAllHouseSetType();

}
