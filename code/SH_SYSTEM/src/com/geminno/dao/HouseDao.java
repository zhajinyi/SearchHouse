package com.geminno.dao;

import java.util.List;

import com.geminno.pojo.House;



public interface HouseDao {
	//新增
	public void addHouse(House house);
	
	//修改
	public void updateHouse(House house);
	
	//删除
	public void deleteHouse(int houseId);
	
	//查询单个房子；
	public House getHouseById(int houseId);
	
	//显示所有的房子；
	public List<House> queryHouse();
	
	
	
	

}
