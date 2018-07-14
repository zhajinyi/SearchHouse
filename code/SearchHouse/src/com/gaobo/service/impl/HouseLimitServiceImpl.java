package com.gaobo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gaobo.mapper.HouseLimitMapper;
import com.gaobo.pojo.Limit;
import com.gaobo.service.HouseLimitService;

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
