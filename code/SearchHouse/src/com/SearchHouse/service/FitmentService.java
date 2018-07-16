package com.gaobo.service;

import java.util.List;

import com.gaobo.pojo.Fitment;

public interface FitmentService {
	public List<Fitment> getAllFitment();

	public Fitment getFitmentById(Integer fitmentId);
}
