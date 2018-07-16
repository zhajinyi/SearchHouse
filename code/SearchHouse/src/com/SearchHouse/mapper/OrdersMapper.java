package com.SearchHouse.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.SearchHouse.pojo.Orders;

public interface OrdersMapper {

	public void addOrder(Orders order);

	public void deleteOrder(Integer houseId);

	public Orders getOrder(@Param("houseId") Integer houseId, @Param("userId") String userId);

	public List<Orders> getAll();

}
