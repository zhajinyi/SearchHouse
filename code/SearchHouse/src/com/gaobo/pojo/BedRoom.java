package com.gaobo.pojo;

import java.util.Set;

public class BedRoom {

	private Integer bedroomIdFk;// 卧室主键
	private String bedroomName;// 都有、主卧、次卧、隔断
	private Set<House> houses;

	public Integer getBedroomIdFk() {
		return bedroomIdFk;
	}

	public void setBedroomIdFk(Integer bedroomIdFk) {
		this.bedroomIdFk = bedroomIdFk;
	}

	public String getBedroomName() {
		return bedroomName;
	}

	public void setBedroomName(String bedroomName) {
		this.bedroomName = bedroomName;
	}

	public BedRoom(Integer bedroomIdFk, String bedroomName) {
		super();
		this.bedroomIdFk = bedroomIdFk;
		this.bedroomName = bedroomName;
	}

	public Set<House> getHouses() {
		return houses;
	}

	public void setHouses(Set<House> houses) {
		this.houses = houses;
	}

	public BedRoom() {
		super();
	}

	@Override
	public String toString() {
		return "BedRoom [bedroomIdFk=" + bedroomIdFk + ", bedroomName=" + bedroomName + "]";
	}

}
