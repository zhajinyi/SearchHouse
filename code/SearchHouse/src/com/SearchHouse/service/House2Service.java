package com.gaobo.service;

import java.util.List;

import com.gaobo.pojo.House;

public interface House2Service {

	public House getHouseById(int houseId);

	public List<House> getHouseByKey1(String keyName);
}
