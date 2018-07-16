package com.SearchHouse.mapper;

import java.util.List;

import com.SearchHouse.pojo.UserInfo;

public interface UserInfoMapper {
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

	// zjy,修改密码
	public void updatepwd(UserInfo userInfo);

	// zjy,修改头像
	public void updatephoto(UserInfo userInfo);

	// 修改个人信息；
	public void updateUserInfo2(UserInfo userInfo);

}
