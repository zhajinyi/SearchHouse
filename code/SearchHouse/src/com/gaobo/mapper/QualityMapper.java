package com.gaobo.mapper;

import com.gaobo.pojo.Quality;

public interface QualityMapper {
	
	//��
	public void addQuality(Quality quality);
	
	//����  ����  useid����
	public Integer findQulaity(String userId); 
	
	//����  ����  useid����
	public Integer findQulaityNum(String userId); 
	
	//���Ҹ�����Ϣ���� ��qualityRating
	public String findPerson(String userId);
	
	
	
}
