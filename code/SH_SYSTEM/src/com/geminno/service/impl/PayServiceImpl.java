package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.PayDao;
import com.geminno.pojo.Pay;
import com.genminno.service.PayService;
@Service
public class PayServiceImpl implements PayService {

	
	@Autowired
	PayDao paydao;
	@Override
	public void addPay(Pay pay) {
		// TODO Auto-generated method stub
		paydao.addPay(pay);
	}

	@Override
	public void deletePay(int payId) {
		// TODO Auto-generated method stub
		paydao.deletePay(payId);
	}

	@Override
	public void updatePay(Pay pay) {
		// TODO Auto-generated method stub
		paydao.updatePay(pay);
	}

	@Override
	public Pay getPayById(int payId) {
		// TODO Auto-generated method stub
		return paydao.getPayById(payId);
	}

	@Override
	public List<Pay> queryAllPay() {
		// TODO Auto-generated method stub
		return paydao.queryAllPay();
	}

}
