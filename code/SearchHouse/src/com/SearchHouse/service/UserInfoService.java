package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Quality;
import com.SearchHouse.pojo.UserInfo;

public interface UserInfoService {

	// 增加用户信息
	public void addUserInfo(UserInfo userInfo);

	// 根据id/账号删除用户信息
	public void deleteUserInfo(String userId);

	// 更新用户信息
	public void updateUserInfo(UserInfo userInfo);

	// 根据id/账号查询用户信息
	public UserInfo getUserById(String userId);

	// 查询所有用户信息
	public List<UserInfo> getAllUsers();

	// zjy,修改密码；
	public void updatepwd(UserInfo userInfo);

	
	//认证
	public void addQuality(Quality quality);
			
	//查找  注册的id
	public Integer findQulaity(String userId); 
			
	//查找注册条数
	public Integer findQulaityNum(String userId); 
			
	//查找个人中的  字段
	public String findPerson(String userId);
	
}
