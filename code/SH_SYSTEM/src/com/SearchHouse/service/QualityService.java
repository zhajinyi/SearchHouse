package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Quality;

public interface QualityService {
public void updateQuality(Quality quality);
	
	
	public void deleteQuality(Integer qualityId);
	
	
	public Quality getQualityById(Integer qualityId);
	
	
	public List<Quality> queryAllQualities();
}
