package com.geminno.dao;

import java.util.List;


import com.geminno.pojo.Admin;

public interface AdminDao {
	//新增一个管理员
	public void addAdmin(Admin admin);
	
	//删除一个管理员
	public void deleteAdmin(String adminId);
	
	//修改管理员信息；
	public void updateAdmin(Admin admin);
	
	//根据管理员ID查询管理员；
	public Admin getAdminById(String adminId);
	
	//查询所有的管理员；
	public List<Admin> queryAllAdmin();

}
