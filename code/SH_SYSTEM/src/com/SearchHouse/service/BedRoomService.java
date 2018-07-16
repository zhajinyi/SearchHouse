package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.BedRoom;

public interface BedRoomService {
	//增加
		public void addBedRoom(BedRoom bedroom);
		
		//删除
	    public void deleteRoom(int bedroomId);
	    
	    //更新
	    public void updateRoom(BedRoom bedroom);
	    
	    //查询单个
	    public BedRoom getRoomById(int bedroomId);
	    
	    //查询
	    public List<BedRoom> queryAllRoom();

}
