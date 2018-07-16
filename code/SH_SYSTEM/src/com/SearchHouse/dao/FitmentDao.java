package com.SearchHouse.dao;

import java.util.List;

import com.SearchHouse.pojo.Fitment;

public interface FitmentDao {
	
	//����
	public void addFitment(Fitment fitment);
	
	//ɾ��
	public void deleteFitment(int fitmentId);
	
	//�޸�
	public void updateFitment(Fitment fitment);
	
	//��ѯ����
	public Fitment getFitmentById(int fitmentId);
	
	//��ѯ����
	public List<Fitment> queryAllFitment();

}
