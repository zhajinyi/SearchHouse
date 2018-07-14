package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.FitmentDao;
import com.geminno.pojo.Fitment;
import com.genminno.service.FitmentService;
@Service
public class FitmentServiceImpl implements FitmentService {

	
	@Autowired
	FitmentDao fitmentdao;
	
	
	public FitmentDao getFitmentdao() {
		return fitmentdao;
	}

	public void setFitmentdao(FitmentDao fitmentdao) {
		this.fitmentdao = fitmentdao;
	}

	@Override
	public void addFitment(Fitment fitment) {
		fitmentdao.addFitment(fitment);
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteFitment(int fitmentId) {
		fitmentdao.deleteFitment(fitmentId);
		// TODO Auto-generated method stub

	}

	@Override
	public void updateFitment(Fitment fitment) {
		fitmentdao.updateFitment(fitment);
		// TODO Auto-generated method stub

	}

	@Override
	public Fitment getFitmentById(int fitmentId) {
		
		// TODO Auto-generated method stub
		return fitmentdao.getFitmentById(fitmentId);
	}

	@Override
	public List<Fitment> queryAllFitment() {
		// TODO Auto-generated method stub
		return fitmentdao.queryAllFitment();
	}

}
