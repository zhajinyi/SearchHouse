package com.gaobo.service;

import java.util.List;

import com.gaobo.pojo.Limit;

public interface HouseLimitService {
	public List<Limit> getAllLimit();

	public Limit getLimitById(Integer limitIdFk);
}
