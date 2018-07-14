package com.geminno.pojo;

import java.util.Set;

public class Pay {

	private Integer payId;
	private String payName;
	
	public Pay(){
		
	}

	public Integer getPayId() {
		return payId;
	}

	public void setPayId(Integer payId) {
		this.payId = payId;
	}

	public String getPayName() {
		return payName;
	}

	public void setPayName(String payName) {
		this.payName = payName;
	}

	@Override
	public String toString() {
		return "Pay [payId=" + payId + ", payName=" + payName + "]";
	}

	public Pay(Integer payId, String payName) {
		super();
		this.payId = payId;
		this.payName = payName;
	}
	
	
	
}
