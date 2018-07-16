package com.SearchHouse.pojo;

import java.util.Set;



public class HouseStatus {
	
	private Integer houseStatusId;
	private String houseStatusName;


	public HouseStatus(){
		
	}


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


	@Override
	public String toString() {
		return "HouseStatus [houseStatusId=" + houseStatusId + ", houseStatusName=" + houseStatusName + "]";
	}


	public HouseStatus(Integer houseStatusId, String houseStatusName) {
		super();
		this.houseStatusId = houseStatusId;
		this.houseStatusName = houseStatusName;
	}
	
	
	
	
}
