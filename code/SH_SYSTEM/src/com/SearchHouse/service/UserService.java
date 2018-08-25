package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.User1;



public interface UserService {
	//增加用户信息
			public void addUserInfo(User1 user);
			
			//根据id/账号删除用户信息
			public void deleteUserInfo(String userId);
			
			//更新用户信息
			public void updateUserInfo(User1 user);
			
			//根据id/账号查询用户信息
			public User1 getUserById(String userId);
			
			//查询所有用户信息
			public List<User1> getAllUsers();
			

}
