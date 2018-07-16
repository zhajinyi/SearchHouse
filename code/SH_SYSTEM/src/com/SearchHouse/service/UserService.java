package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.User;



public interface UserService {
	//�����û���Ϣ
			public void addUserInfo(User user);
			
			//����id/�˺�ɾ���û���Ϣ
			public void deleteUserInfo(String userId);
			
			//�����û���Ϣ
			public void updateUserInfo(User user);
			
			//����id/�˺Ų�ѯ�û���Ϣ
			public User getUserById(String userId);
			
			//��ѯ�����û���Ϣ
			public List<User> getAllUsers();
			

}
