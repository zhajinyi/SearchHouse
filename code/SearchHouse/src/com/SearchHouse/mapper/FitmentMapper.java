package com.SearchHouse.mapper;

import java.util.List;

import com.SearchHouse.pojo.Fitment;

public interface FitmentMapper {
	public List<Fitment> getAllFitment();

	public Fitment getFitmentById(Integer fitmentId);
}
