package com.SearchHouse.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SearchHouse.mapper.PriceContainsMapper;
import com.SearchHouse.pojo.PriceContain;
import com.SearchHouse.service.PriceContainsService;

@Service
@Transactional
public class PriceContainsServiceImpl implements PriceContainsService {
	@Resource
	PriceContainsMapper priceContainsMapper;

	public PriceContainsMapper getPriceContainsMapper() {
		return priceContainsMapper;
	}

	public void setPriceContainsMapper(PriceContainsMapper priceContainsMapper) {
		this.priceContainsMapper = priceContainsMapper;
	}

	@Override
	public void addPri(PriceContain priceContain) {
		// TODO Auto-generated method stub
		priceContainsMapper.addPri(priceContain);
	}

	@Override
	public void deletePri(int houseId) {
		// TODO Auto-generated method stub
		priceContainsMapper.deletePri(houseId);
	}

}
