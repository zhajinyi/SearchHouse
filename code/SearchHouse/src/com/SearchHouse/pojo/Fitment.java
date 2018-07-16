package com.SearchHouse.pojo;

import java.util.Set;

public class Fitment {
	private Integer fitmentId;
	private String fitmentName;

	public Integer getFitmentId() {
		return fitmentId;
	}

	public void setFitmentId(Integer fitmentId) {
		this.fitmentId = fitmentId;
	}

	public String getFitmentName() {
		return fitmentName;
	}

	public void setFitmentName(String fitmentName) {
		this.fitmentName = fitmentName;
	}

	public Fitment(Integer fitmentId, String fitmentName) {
		super();
		this.fitmentId = fitmentId;
		this.fitmentName = fitmentName;
	}

	public Fitment() {

	}

	@Override
	public String toString() {
		return "Fitment [fitmentId=" + fitmentId + ", fitmentName=" + fitmentName + "]";
	}

}
