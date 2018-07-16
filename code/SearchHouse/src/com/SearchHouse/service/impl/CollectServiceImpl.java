package com.SearchHouse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SearchHouse.mapper.CollectMapper;
import com.SearchHouse.mapper.HouseMapper;
import com.SearchHouse.mapper.UserInfoMapper;
import com.SearchHouse.pojo.Collect;
import com.SearchHouse.pojo.House;
import com.SearchHouse.pojo.UserInfo;
import com.SearchHouse.service.CollectService;

@Service
@Transactional
public class CollectServiceImpl implements CollectService {
	@Resource
	CollectMapper collectmapper;
	@Resource
	HouseMapper houseMapper;
	@Resource
	UserInfoMapper userInfoMapper;

	public CollectMapper getCollectmapper() {
		return collectmapper;
	}

	public void setCollectmapper(CollectMapper collectmapper) {
		this.collectmapper = collectmapper;
	}

	public HouseMapper getHouseMapper() {
		return houseMapper;
	}

	public void setHouseMapper(HouseMapper houseMapper) {
		this.houseMapper = houseMapper;
	}

	public UserInfoMapper getUserInfoMapper() {
		return userInfoMapper;
	}

	public void setUserInfoMapper(UserInfoMapper userInfoMapper) {
		this.userInfoMapper = userInfoMapper;
	}

	@Override
	public void addClollect(Integer houseId, String userId) {
		
		
		System.out.println(houseId);
		System.out.println(userId);
		
		House house = houseMapper.getHouseById(houseId);
		UserInfo userInfo = userInfoMapper.getUserById(userId);
		
		collectmapper.addClollect(houseId,userId);
		Integer count1 = 0;
		Integer count2 = 0;

		List<Collect> collects = collectmapper.listAllCollect();
		for (Collect collect2 : collects) {
			if (collect2.getHouse().getHouseId() == houseId) {
				count1 = count1 + 1;
			}
			if (collect2.getUserInfo().getUserId().equals(userId)) {
				count2 = count2 + 1;
			}
		}

		house.setCollectNum(count1);
		userInfo.setCollectNum(count2);

		houseMapper.updateHouse(house);
		userInfoMapper.updateUserInfo(userInfo);

	}

	@Override
	public void deleteCollect(Integer houseId, String userId) {

		House house = houseMapper.getHouseById(houseId);
		UserInfo userInfo = userInfoMapper.getUserById(userId);

		Integer count1 = house.getCollectNum();
		Integer count2 = userInfo.getCollectNum();

		Collect collect = collectmapper.getCollectById(houseId, userId);

		System.out.println(collect);

		if (collect.getHouse().getHouseId() == houseId) {
			count1 = count1 - 1;
		}
		if (collect.getUserInfo().getUserId().equals(userId)) {
			count2 = count2 - 1;
		}

		System.out.println(count1);
		System.out.println(count2);

		house.setCollectNum(count1);
		userInfo.setCollectNum(count2);

		houseMapper.updateHouse(house);
		userInfoMapper.updateUserInfo(userInfo);

		collectmapper.deleteCollect(houseId, userId);
	}

	@Override
	public void updateCollect(Collect collect) {
		collectmapper.updateCollect(collect);

	}

	@Override
	public Collect getCollectById(@Param("houseId") Integer houseId, @Param("userId") String userId) {
		// TODO Auto-generated method stub
		return collectmapper.getCollectById(houseId, userId);
	}

	@Override
	public List<Collect> listAllCollect() {
		// TODO Auto-generated method stub
		return collectmapper.listAllCollect();
	}

}
