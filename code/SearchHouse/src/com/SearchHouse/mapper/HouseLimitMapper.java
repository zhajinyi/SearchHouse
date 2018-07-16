package com.SearchHouse.mapper;

import java.util.List;

import com.SearchHouse.pojo.Limit;

public interface HouseLimitMapper {
	public Limit getLimitById(Integer limitIdFk);

	public List<Limit> getAllLimit();
}
