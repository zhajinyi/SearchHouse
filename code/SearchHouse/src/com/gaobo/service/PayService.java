package com.gaobo.service;

import java.util.List;

import com.gaobo.pojo.Pay;

public interface PayService {
	public List<Pay> getAllPays();

	public Pay getPayById(Integer payId);
}
