package com.gaobo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gaobo.mapper.FitmentMapper;
import com.gaobo.pojo.Fitment;
import com.gaobo.service.FitmentService;

@Service
@Transactional
public class FitmentServiceImpl implements FitmentService {
	@Resource
	FitmentMapper fitmentMapper;

	public FitmentMapper getFitmentMapper() {
		return fitmentMapper;
	}

	public void setFitmentMapper(FitmentMapper fitmentMapper) {
		this.fitmentMapper = fitmentMapper;
	}

	@Override
	public List<Fitment> getAllFitment() {
		// TODO Auto-generated method stub
		return fitmentMapper.getAllFitment();
	}

	@Override
	public Fitment getFitmentById(Integer fitmentId) {
		// TODO Auto-generated method stub
		return fitmentMapper.getFitmentById(fitmentId);
	}

}
