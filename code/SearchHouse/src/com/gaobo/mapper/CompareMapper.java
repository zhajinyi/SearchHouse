package com.gaobo.mapper;

import java.util.List;

import com.gaobo.pojo.Compare;

public interface CompareMapper {

	// ����Ա���
	public void addCompare(Compare compare);

	// ɾ���Ա���
	public void deleteCompare(Integer compareId);

	// ��ѯ�Ա���
	public List<Compare> getAllCompare();
}
