package com.gaobo.mapper;

import java.util.List;

import com.gaobo.pojo.Limit;

public interface HouseLimitMapper {
	public Limit getLimitById(Integer limitIdFk);

	public List<Limit> getAllLimit();
}
