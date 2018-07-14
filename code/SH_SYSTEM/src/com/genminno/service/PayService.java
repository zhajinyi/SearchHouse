package com.genminno.service;

import java.util.List;

import com.geminno.pojo.Pay;

public interface PayService {
public void addPay(Pay pay);
	
	public void deletePay(int payId);

	public void updatePay(Pay pay);
	
	public Pay getPayById(int payId);
	
	
	public List<Pay> queryAllPay();
}
