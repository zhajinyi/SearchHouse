package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Compare;

public interface CompareService {

	// ����Ա���
	public void addCompare(Compare compare);

	// ɾ���Ա���
	public void deleteCompare(Integer compareId);

	// ��ѯ�Ա���
	public List<Compare> getAllCompare();
}
