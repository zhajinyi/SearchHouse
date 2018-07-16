package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.User;



public interface UserService {
	//增加用户信息
			public void addUserInfo(User user);
			
			//根据id/账号删除用户信息
			public void deleteUserInfo(String userId);
			
			//更新用户信息
			public void updateUserInfo(User user);
			
			//根据id/账号查询用户信息
			public User getUserById(String userId);
			
			//查询所有用户信息
			public List<User> getAllUsers();
			

}
