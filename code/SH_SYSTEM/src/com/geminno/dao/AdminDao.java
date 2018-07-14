package com.geminno.dao;

import java.util.List;


import com.geminno.pojo.Admin;

public interface AdminDao {
	//����һ������Ա
	public void addAdmin(Admin admin);
	
	//ɾ��һ������Ա
	public void deleteAdmin(String adminId);
	
	//�޸Ĺ���Ա��Ϣ��
	public void updateAdmin(Admin admin);
	
	//���ݹ���ԱID��ѯ����Ա��
	public Admin getAdminById(String adminId);
	
	//��ѯ���еĹ���Ա��
	public List<Admin> queryAllAdmin();

}
