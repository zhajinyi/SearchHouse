package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Message;

public interface MessageService {
	//����
		public void addMsg(Message msg);
		
		//ɾ��
		public void delete(int msgId);
		
		//�޸�
		public void update(Message msg);
		
		//��ѯ������
		public Message getMsgById(int msgId);
		
		//��ѯȫ��
		public List<Message> queryAllMessage();

}
