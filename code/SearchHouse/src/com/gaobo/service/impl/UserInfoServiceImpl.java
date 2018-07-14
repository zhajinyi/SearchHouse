package com.gaobo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gaobo.mapper.QualityMapper;
import com.gaobo.mapper.UserInfoMapper;
import com.gaobo.pojo.Quality;
import com.gaobo.pojo.UserInfo;
import com.gaobo.service.UserInfoService;

@Service
@Transactional
public class UserInfoServiceImpl implements UserInfoService {
	@Resource
	UserInfoMapper userInfoMapper;

	@Resource
	QualityMapper qualityMapper;
	public UserInfoMapper getUserInfoMapper() {
		return userInfoMapper;
	}

	public void setUserInfoMapper(UserInfoMapper userInfoMapper) {
		this.userInfoMapper = userInfoMapper;
	}

	@Override
	public void addUserInfo(UserInfo userInfo) {
		userInfoMapper.addUserInfo(userInfo);
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteUserInfo(String userId) {
		// TODO Auto-generated method stub
		userInfoMapper.deleteUserInfo(userId);

	}

	@Override
	public void updateUserInfo(UserInfo userInfo) {
		// TODO Auto-generated method stub
		userInfoMapper.updateUserInfo(userInfo);
		System.out.println("123");
	}

	@Override
	public UserInfo getUserById(String userId) {
		// TODO Auto-generated method stub
		return userInfoMapper.getUserById(userId);
	}

	@Override
	public List<UserInfo> getAllUsers() {
		// TODO Auto-generated method stub
		return userInfoMapper.getAllUsers();
	}

	// zjy
	@Override
	public void updatepwd(UserInfo userInfo) {

		userInfoMapper.updatepwd(userInfo);

	}

	
	//以下为认证内容
		@Override
		public void addQuality(Quality quality) {
			qualityMapper.addQuality(quality);
			
		}

		@Override
		public Integer findQulaity(String userId) {
			// TODO Auto-generated method stub
			return qualityMapper.findQulaity(userId);
		}

		@Override
		public Integer findQulaityNum(String userId) {
			// TODO Auto-generated method stub
			return qualityMapper.findQulaityNum(userId);
		}

		@Override
		public String findPerson(String userId) {
			// TODO Auto-generated method stub
			return qualityMapper.findPerson(userId);
		}
	
	
	
}
