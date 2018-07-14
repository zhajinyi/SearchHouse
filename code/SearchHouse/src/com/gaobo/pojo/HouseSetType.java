package com.gaobo.pojo;

import java.util.Set;

public class HouseSetType {

	private Integer houseSetTypeId;
	private String houseSetTypeName;
	private Set<House> houses;

	public Integer getHouseSetTypeId() {
		return houseSetTypeId;
	}

	public void setHouseSetTypeId(Integer houseSetTypeId) {
		this.houseSetTypeId = houseSetTypeId;
	}

	public String getHouseSetTypeName() {
		return houseSetTypeName;
	}

	public void setHouseSetTypeName(String houseSetTypeName) {
		this.houseSetTypeName = houseSetTypeName;
	}

	public Set<House> getHouses() {
		return houses;
	}

	public void setHouses(Set<House> houses) {
		this.houses = houses;
	}

	public HouseSetType(Integer houseSetTypeId, String houseSetTypeName) {
		super();
		this.houseSetTypeId = houseSetTypeId;
		this.houseSetTypeName = houseSetTypeName;
	}

	public HouseSetType() {
		super();
	}

	@Override
	public String toString() {
		return "HouseSetType [houseSetTypeId=" + houseSetTypeId + ", houseSetTypeName=" + houseSetTypeName + "]";
	}

}
