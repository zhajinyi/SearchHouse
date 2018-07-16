package com.SearchHouse.pojo;

import java.util.Set;

public class HouseStatus {

	private Integer houseStatusId;
	private String houseStatusName;
	private Set<House> houses;

	public Integer getHouseStatusId() {
		return houseStatusId;
	}

	public void setHouseStatusId(Integer houseStatusId) {
		this.houseStatusId = houseStatusId;
	}

	public String getHouseStatusName() {
		return houseStatusName;
	}

	public void setHouseStatusName(String houseStatusName) {
		this.houseStatusName = houseStatusName;
	}

	public Set<House> getHouses() {
		return houses;
	}

	public void setHouses(Set<House> houses) {
		this.houses = houses;
	}

	public HouseStatus(Integer houseStatusId, String houseStatusName, Set<House> houses) {
		super();
		this.houseStatusId = houseStatusId;
		this.houseStatusName = houseStatusName;
		this.houses = houses;
	}

	public HouseStatus() {

	}

	@Override
	public String toString() {
		return "HouseStatus [houseStatusId=" + houseStatusId + ", houseStatusName=" + houseStatusName + ", houses="
				+ houses + "]";
	}

}
