package com.SearchHouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SearchHouse.dao.UserInfoDao;
import com.SearchHouse.pojo.User1;
import com.SearchHouse.service.UserService;
@Service
public class UserInfoServiceImpl implements UserService {

	
	@Autowired
	UserInfoDao userinfodao;
	
	public UserInfoDao getUserinfodao() {
		return userinfodao;
	}

	public void setUserinfodao(UserInfoDao userinfodao) {
		this.userinfodao = userinfodao;
	}

	@Override
	public void addUserInfo(User1 user) {
		// TODO Auto-generated method stub
		userinfodao.addUserInfo(user);
	}

	@Override
	public void deleteUserInfo(String userId) {
		// TODO Auto-generated method stub
		userinfodao.deleteUserInfo(userId);
	}

	@Override
	public void updateUserInfo(User1 user) {
		// TODO Auto-generated method stub
		userinfodao.updateUserInfo(user);
	}

	@Override
	public User1 getUserById(String userId) {
		// TODO Auto-generated method stub
		return userinfodao.getUserById(userId);
	}

	@Override
	public List<User1> getAllUsers() {
		// TODO Auto-generated method stub
		return userinfodao.getAllUsers();
	}

}
