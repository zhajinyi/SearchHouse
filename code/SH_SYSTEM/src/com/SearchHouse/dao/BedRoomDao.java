package com.SearchHouse.dao;

import java.util.List;

import com.SearchHouse.pojo.BedRoom;

public interface BedRoomDao {
	//����
	public void addBedRoom(BedRoom bedroom);
	
	//ɾ��
    public void deleteRoom(int bedroomId);
    
    //����
    public void updateRoom(BedRoom bedroom);
    
    //��ѯ����
    public BedRoom getRoomById(int bedroomId);
    
    //��ѯ
    public List<BedRoom> queryAllRoom();

}
