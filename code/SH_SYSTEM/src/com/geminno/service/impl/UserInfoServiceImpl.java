package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.UserInfoDao;
import com.geminno.pojo.User;
import com.genminno.service.UserService;
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
	public void addUserInfo(User user) {
		// TODO Auto-generated method stub
		userinfodao.addUserInfo(user);
	}

	@Override
	public void deleteUserInfo(String userId) {
		// TODO Auto-generated method stub
		userinfodao.deleteUserInfo(userId);
	}

	@Override
	public void updateUserInfo(User user) {
		// TODO Auto-generated method stub
		userinfodao.updateUserInfo(user);
	}

	@Override
	public User getUserById(String userId) {
		// TODO Auto-generated method stub
		return userinfodao.getUserById(userId);
	}

	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return userinfodao.getAllUsers();
	}

}
