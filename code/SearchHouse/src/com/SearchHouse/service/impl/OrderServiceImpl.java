package com.SearchHouse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SearchHouse.mapper.OrdersMapper;
import com.SearchHouse.pojo.Orders;
import com.SearchHouse.service.OrdersService;

@Service
@Transactional
public class OrderServiceImpl implements OrdersService {
	@Resource
	OrdersMapper ordersMapper;

	public OrdersMapper getOrdersMapper() {
		return ordersMapper;
	}

	public void setOrdersMapper(OrdersMapper ordersMapper) {
		this.ordersMapper = ordersMapper;
	}

	@Override
	public void addOrder(Orders order) {
		// TODO Auto-generated method stub
		ordersMapper.addOrder(order);

	}

	@Override
	public void deleteOrder(Integer houseId) {
		// TODO Auto-generated method stub
		ordersMapper.deleteOrder(houseId);
	}

	@Override
	public Orders getOrder(Integer houseId, String userId) {
		// TODO Auto-generated method stub
		System.out.println(houseId + ":" + userId);
		return ordersMapper.getOrder(houseId, userId);
	}

	@Override
	public List<Orders> getAll() {
		// TODO Auto-generated method stub
		return ordersMapper.getAll();
	}
}
