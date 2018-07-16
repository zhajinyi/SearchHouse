package com.SearchHouse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SearchHouse.mapper.HouseLimitMapper;
import com.SearchHouse.pojo.Limit;
import com.SearchHouse.service.HouseLimitService;

@Service
@Transactional
public class HouseLimitServiceImpl implements HouseLimitService {
	@Resource
	HouseLimitMapper houseLimitMapper;

	public HouseLimitMapper getHouseLimitMapper() {
		return houseLimitMapper;
	}

	public void setHouseLimitMapper(HouseLimitMapper houseLimitMapper) {
		this.houseLimitMapper = houseLimitMapper;
	}

	@Override
	public List<Limit> getAllLimit() {
		// TODO Auto-generated method stub
		return houseLimitMapper.getAllLimit();
	}

	@Override
	public Limit getLimitById(Integer limitIdFk) {
		// TODO Auto-generated method stub
		return houseLimitMapper.getLimitById(limitIdFk);
	}
}
