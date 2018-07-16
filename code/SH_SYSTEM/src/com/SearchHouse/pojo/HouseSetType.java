package com.SearchHouse.pojo;

import java.util.Set;

public class HouseSetType {

	private Integer houseSetTypeId;
	private String houseSetTypeName;
	
	public HouseSetType(){
		
	}

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

	@Override
	public String toString() {
		return "HouseSetType [houseSetTypeId=" + houseSetTypeId + ", houseSetTypeName=" + houseSetTypeName + "]";
	}

	public HouseSetType(Integer houseSetTypeId, String houseSetTypeName) {
		super();
		this.houseSetTypeId = houseSetTypeId;
		this.houseSetTypeName = houseSetTypeName;
	}
	
	
	
}
