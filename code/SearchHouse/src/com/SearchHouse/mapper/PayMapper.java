package com.SearchHouse.mapper;

import java.util.List;

import com.SearchHouse.pojo.Pay;

public interface PayMapper {
	public List<Pay> getAllPays();

	public Pay getPayById(Integer payId);
}
