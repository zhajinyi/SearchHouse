package com.SearchHouse.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.SearchHouse.pojo.User1;


@Repository
public interface UserInfoDao {
	    //�����û���Ϣ
		public void addUserInfo(User1 user);
		
		//����id/�˺�ɾ���û���Ϣ
		public void deleteUserInfo(String userId);
		
		//�����û���Ϣ
		public void updateUserInfo(User1 user);
		
		//����id/�˺Ų�ѯ�û���Ϣ
		public User1 getUserById(String userId);
		
		//��ѯ�����û���Ϣ
		public List<User1> getAllUsers();
		
	
		
		
	

}
