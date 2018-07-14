package com.gaobo.mapper;

import java.util.List;

import com.gaobo.pojo.Fitment;

public interface FitmentMapper {
	public List<Fitment> getAllFitment();

	public Fitment getFitmentById(Integer fitmentId);
}
