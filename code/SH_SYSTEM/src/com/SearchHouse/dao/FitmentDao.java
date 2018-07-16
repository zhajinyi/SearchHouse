package com.SearchHouse.dao;

import java.util.List;

import com.SearchHouse.pojo.Fitment;

public interface FitmentDao {
	
	//新增
	public void addFitment(Fitment fitment);
	
	//删除
	public void deleteFitment(int fitmentId);
	
	//修改
	public void updateFitment(Fitment fitment);
	
	//查询单个
	public Fitment getFitmentById(int fitmentId);
	
	//查询所有
	public List<Fitment> queryAllFitment();

}
