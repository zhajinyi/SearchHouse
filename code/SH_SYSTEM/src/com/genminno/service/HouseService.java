package com.genminno.service;

import java.util.List;

import com.geminno.pojo.House;



public interface HouseService {
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
