package com.geminno.dao;

import java.util.List;

import com.geminno.pojo.Pay;

public interface PayDao {
	public void addPay(Pay pay);
	
	public void deletePay(int payId);

	public void updatePay(Pay pay);
	
	public Pay getPayById(int payId);
	
	
	public List<Pay> queryAllPay();
	
	
}
