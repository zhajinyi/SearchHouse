package com.SearchHouse.mapper;

import java.util.List;

import com.SearchHouse.pojo.House;

public interface House2Mapper {

	public House getHouseById(int houseId);

	public List<House> getHouseByKey1(String keyName);
}
