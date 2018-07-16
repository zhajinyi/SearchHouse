package com.SearchHouse.mapper;

import java.util.List;

import com.SearchHouse.pojo.UserInfo;

public interface UserInfoMapper {
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

	// zjy,�޸�����
	public void updatepwd(UserInfo userInfo);

	// zjy,�޸�ͷ��
	public void updatephoto(UserInfo userInfo);

	// �޸ĸ�����Ϣ��
	public void updateUserInfo2(UserInfo userInfo);

}
