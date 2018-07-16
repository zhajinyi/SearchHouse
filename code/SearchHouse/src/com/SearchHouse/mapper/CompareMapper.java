package com.gaobo.mapper;

import java.util.List;

import com.gaobo.pojo.Compare;

public interface CompareMapper {

	// 加入对比项
	public void addCompare(Compare compare);

	// 删除对比项
	public void deleteCompare(Integer compareId);

	// 查询对比项
	public List<Compare> getAllCompare();
}
