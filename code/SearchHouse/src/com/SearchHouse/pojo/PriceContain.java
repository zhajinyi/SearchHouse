package com.SearchHouse.pojo;

public class PriceContain {
	private Integer houseId;// ·¿ÎÝid
	private String priceContains;
	private Integer positon;

	public Integer getHouseId() {
		return houseId;
	}

	public void setHouseId(Integer houseId) {
		this.houseId = houseId;
	}

	public String getPriceContains() {
		return priceContains;
	}

	public void setPriceContains(String priceContains) {
		this.priceContains = priceContains;
	}

	public Integer getPositon() {
		return positon;
	}

	public void setPositon(Integer positon) {
		this.positon = positon;
	}

	public PriceContain(Integer houseId, String priceContains, Integer positon) {
		super();
		this.houseId = houseId;
		this.priceContains = priceContains;
		this.positon = positon;
	}

	public PriceContain() {
		super();
	}

	@Override
	public String toString() {
		return "PriceContain [houseId=" + houseId + ", priceContains=" + priceContains + ", positon=" + positon + "]";
	}

}
