package com.gaobo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gaobo.mapper.PayMapper;
import com.gaobo.pojo.Pay;
import com.gaobo.service.PayService;

@Service
@Transactional
public class PayMapperImpl implements PayService {
	@Resource
	PayMapper payMapper;

	public PayMapper getPayMapper() {
		return payMapper;
	}

	public void setPayMapper(PayMapper payMapper) {
		this.payMapper = payMapper;
	}

	@Override
	public List<Pay> getAllPays() {
		// TODO Auto-generated method stub
		return payMapper.getAllPays();
	}

	@Override
	public Pay getPayById(Integer payId) {
		// TODO Auto-generated method stub
		return payMapper.getPayById(payId);
	}

}
