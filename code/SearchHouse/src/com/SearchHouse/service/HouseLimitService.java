package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Limit;

public interface HouseLimitService {
	public List<Limit> getAllLimit();

	public Limit getLimitById(Integer limitIdFk);
}
