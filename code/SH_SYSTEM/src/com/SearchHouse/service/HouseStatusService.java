package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.HouseStatus;



public interface HouseStatusService {
	//新增状态；
		public void addHouseStatus(HouseStatus housestatus);

		
		//删除
		public void deleteHouseStatus(int houseStatusId); 
		
		//修改
		public void updateHouseStatus(HouseStatus housestatus);
		
		//查询
		public HouseStatus getHouseStatusById(int houseStatusId); 
		
		public List<HouseStatus> queryAllHouseStatus();

}
