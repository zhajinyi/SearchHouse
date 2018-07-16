package com.SearchHouse.pojo;

import java.util.Date;

public class MyBrowse {

	private Integer myBrowseId;
	private House house;
	private UserInfo userInfo;
	private Date time;

	public Integer getMyBrowseId() {
		return myBrowseId;
	}

	public void setMyBrowseId(Integer myBrowseId) {
		this.myBrowseId = myBrowseId;
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

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public MyBrowse(Integer myBrowseId, House house, UserInfo userInfo, Date time) {
		super();
		this.myBrowseId = myBrowseId;
		this.house = house;
		this.userInfo = userInfo;
		this.time = time;
	}

	public MyBrowse() {
		super();
	}

	@Override
	public String toString() {
		return "MyBrowse [myBrowseId=" + myBrowseId + ", house=" + house + ", userInfo=" + userInfo + ", time=" + time
				+ "]";
	}

}
