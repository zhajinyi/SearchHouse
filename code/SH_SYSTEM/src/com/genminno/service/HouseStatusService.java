package com.genminno.service;

import java.util.List;

import com.geminno.pojo.HouseStatus;



public interface HouseStatusService {
	//����״̬��
		public void addHouseStatus(HouseStatus housestatus);

		
		//ɾ��
		public void deleteHouseStatus(int houseStatusId); 
		
		//�޸�
		public void updateHouseStatus(HouseStatus housestatus);
		
		//��ѯ
		public HouseStatus getHouseStatusById(int houseStatusId); 
		
		public List<HouseStatus> queryAllHouseStatus();

}
