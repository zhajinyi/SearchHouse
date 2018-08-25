package com.SearchHouse.dao;

import java.util.List;

import com.SearchHouse.pojo.Administrator;

public interface AdminDao {
	//����һ������Ա
	public void addAdmin(Administrator admin);
	
	//ɾ��һ������Ա
	public void deleteAdmin(String adminId);
	
	//�޸Ĺ���Ա��Ϣ��
	public void updateAdmin(Administrator admin);
	
	//���ݹ���ԱID��ѯ����Ա��
	public Administrator getAdminById(String adminId);
	
	//��ѯ���еĹ���Ա��
	public List<Administrator> queryAllAdmin();

}
