package com.SearchHouse.dao;

import java.util.List;

import com.SearchHouse.pojo.Administrator;

public interface AdminDao {
	//新增一个管理员
	public void addAdmin(Administrator admin);
	
	//删除一个管理员
	public void deleteAdmin(String adminId);
	
	//修改管理员信息；
	public void updateAdmin(Administrator admin);
	
	//根据管理员ID查询管理员；
	public Administrator getAdminById(String adminId);
	
	//查询所有的管理员；
	public List<Administrator> queryAllAdmin();

}
