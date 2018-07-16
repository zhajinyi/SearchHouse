package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Pay;

public interface PayService {
	public List<Pay> getAllPays();

	public Pay getPayById(Integer payId);
}
