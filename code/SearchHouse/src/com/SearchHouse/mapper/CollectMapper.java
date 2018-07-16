package com.gaobo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gaobo.pojo.Collect;

public interface CollectMapper {

	// �����ղأ�
	public void addClollect(@Param("houseId")  Integer houseId, @Param("userId")  String userId);

	// ɾ���ղ�
	public void deleteCollect(@Param("houseId") Integer houseId, @Param("userId") String userId);

	// �޸��ղ�
	public void updateCollect(Collect collect);

	// ͨ��ID��ѯ
	public Collect getCollectById(@Param("houseId") Integer houseId, @Param("userId") String userId);

	// ��ѯ���е��ղ�
	public List<Collect> listAllCollect();

}
