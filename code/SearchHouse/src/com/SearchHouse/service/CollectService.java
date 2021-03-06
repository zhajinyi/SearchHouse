package com.SearchHouse.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.SearchHouse.pojo.Collect;

public interface CollectService {

	// 新增收藏；
	public void addClollect(@Param("houseId") Integer houseId, @Param("userId")  String userId);

	// 删除收藏
	public void deleteCollect(@Param("houseId") Integer houseId, @Param("userId") String userId);

	// 修改收藏
	public void updateCollect(Collect collect);

	// 通过ID查询
	public Collect getCollectById(@Param("houseId") Integer houseId, @Param("userId") String userId);

	// 查询所有的收藏
	public List<Collect> listAllCollect();

}
