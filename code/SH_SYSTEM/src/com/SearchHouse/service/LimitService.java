package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Limit;

public interface LimitService {
	
	//ĞÂÔö
		public void addLimit(Limit limit);
		
		public void updateLimit(Limit limit);
		
		public void deleteLimit(int limitId);
		
		public Limit getLimitById(int limitId);
		
		public List<Limit> queryAllLimit();

}
