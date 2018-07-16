package com.SearchHouse.pojo;

public class Pay {

	private Integer payId;
	private String payName;

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

	public Pay(Integer payId, String payName) {
		super();
		this.payId = payId;
		this.payName = payName;
	}

	public Pay() {
		super();
	}

	@Override
	public String toString() {
		return "Pay [payId=" + payId + ", payName=" + payName + "]";
	}

}
