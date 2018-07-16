package com.SearchHouse.pojo;

import java.sql.Timestamp;

public class Collect {
	private Integer collectId;
	private House house;
	private UserInfo userInfo;
	private Timestamp collectTime;

	public Integer getCollectId() {
		return collectId;
	}

	public void setCollectId(Integer collectId) {
		this.collectId = collectId;
	}

	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public Timestamp getCollectTime() {
		return collectTime;
	}

	public void setCollectTime(Timestamp collectTime) {
		this.collectTime = collectTime;
	}

	public Collect() {
		super();
	}

	@Override
	public String toString() {
		return "Collect [collectId=" + collectId + ", house=" + house + ", userInfo=" + userInfo + ", collectTime="
				+ collectTime + "]";
	}

	public Collect(House house, UserInfo userInfo) {
		super();
		this.house = house;
		this.userInfo = userInfo;
	}
}
