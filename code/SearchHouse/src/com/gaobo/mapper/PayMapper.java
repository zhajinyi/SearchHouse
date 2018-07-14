package com.gaobo.mapper;

import java.util.List;

import com.gaobo.pojo.Pay;

public interface PayMapper {
	public List<Pay> getAllPays();

	public Pay getPayById(Integer payId);
}
