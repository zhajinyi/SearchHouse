package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Quality;
import com.SearchHouse.pojo.UserInfo;

public interface UserInfoService {

	// �����û���Ϣ
	public void addUserInfo(UserInfo userInfo);

	// ����id/�˺�ɾ���û���Ϣ
	public void deleteUserInfo(String userId);

	// �����û���Ϣ
	public void updateUserInfo(UserInfo userInfo);

	// ����id/�˺Ų�ѯ�û���Ϣ
	public UserInfo getUserById(String userId);

	// ��ѯ�����û���Ϣ
	public List<UserInfo> getAllUsers();

	// zjy,�޸����룻
	public void updatepwd(UserInfo userInfo);

	
	//��֤
	public void addQuality(Quality quality);
			
	//����  ע���id
	public Integer findQulaity(String userId); 
			
	//����ע������
	public Integer findQulaityNum(String userId); 
			
	//���Ҹ����е�  �ֶ�
	public String findPerson(String userId);
	
}
