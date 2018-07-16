package com.SearchHouse.dao;

import java.util.List;

import com.SearchHouse.pojo.Pay;

public interface PayDao {
	public void addPay(Pay pay);
	
	public void deletePay(int payId);

	public void updatePay(Pay pay);
	
	public Pay getPayById(int payId);
	
	
	public List<Pay> queryAllPay();
	
	
}
