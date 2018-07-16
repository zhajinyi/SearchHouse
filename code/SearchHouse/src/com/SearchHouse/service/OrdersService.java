package com.SearchHouse.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SearchHouse.pojo.Orders;

public interface OrdersService {
	public void addOrder(Orders order);

	public void deleteOrder(Integer houseId);

	public Orders getOrder(Integer houseId, String userId);

	public List<Orders> getAll();

}
