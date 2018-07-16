package com.SearchHouse.mapper;

import com.SearchHouse.pojo.Quality;

public interface QualityMapper {
	
	//增
	public void addQuality(Quality quality);
	
	//查找  根据  useid查找
	public Integer findQulaity(String userId); 
	
	//查找  根据  useid查找
	public Integer findQulaityNum(String userId); 
	
	//查找个人信息表中 的qualityRating
	public String findPerson(String userId);
	
	
	
}
