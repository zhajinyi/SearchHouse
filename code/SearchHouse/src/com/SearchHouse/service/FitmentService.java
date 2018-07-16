package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Fitment;

public interface FitmentService {
	public List<Fitment> getAllFitment();

	public Fitment getFitmentById(Integer fitmentId);
}
