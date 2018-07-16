package com.SearchHouse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SearchHouse.mapper.FitmentMapper;
import com.SearchHouse.pojo.Fitment;
import com.SearchHouse.service.FitmentService;

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
