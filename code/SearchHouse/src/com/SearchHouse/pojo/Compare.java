package com.SearchHouse.pojo;

public class Compare {

	private Integer compareId;
	private House house;

	public Compare() {

	}

	public Compare(Integer compareId, House house) {
		super();
		this.compareId = compareId;
		this.house = house;
	}

	public Compare(House house) {
		super();
		this.house = house;
	}

	public Integer getCompareId() {
		return compareId;
	}

	public void setCompareId(Integer compareId) {
		this.compareId = compareId;
	}

	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	@Override
	public String toString() {
		return "Compare [compareId=" + compareId + ", house=" + house + "]";
	}

}
