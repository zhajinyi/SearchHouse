package com.geminno.dao;

import java.util.List;

import com.geminno.pojo.House;



public interface HouseDao {
	//����
	public void addHouse(House house);
	
	//�޸�
	public void updateHouse(House house);
	
	//ɾ��
	public void deleteHouse(int houseId);
	
	//��ѯ�������ӣ�
	public House getHouseById(int houseId);
	
	//��ʾ���еķ��ӣ�
	public List<House> queryHouse();
	
	
	
	

}
