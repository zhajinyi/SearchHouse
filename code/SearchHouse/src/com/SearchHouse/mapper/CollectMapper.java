package com.gaobo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gaobo.pojo.Collect;

public interface CollectMapper {

	// 新增收藏；
	public void addClollect(@Param("houseId")  Integer houseId, @Param("userId")  String userId);

	// 删除收藏
	public void deleteCollect(@Param("houseId") Integer houseId, @Param("userId") String userId);

	// 修改收藏
	public void updateCollect(Collect collect);

	// 通过ID查询
	public Collect getCollectById(@Param("houseId") Integer houseId, @Param("userId") String userId);

	// 查询所有的收藏
	public List<Collect> listAllCollect();

}
