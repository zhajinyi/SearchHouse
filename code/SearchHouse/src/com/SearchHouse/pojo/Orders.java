package com.SearchHouse.pojo;

import java.util.Date;

public class Orders {

	private Integer ordersId;
	private Date seeDate;
	private String houseStatus;
	private String newName;
	private String newDel;
	private String newMail;
	private String newInfo;
	private String time;

	private UserInfo userInfo;
	private House house;

	public String getNewName() {
		return newName;
	}

	public void setNewName(String newName) {
		this.newName = newName;
	}

	public String getNewDel() {
		return newDel;
	}

	public void setNewDel(String newDel) {
		this.newDel = newDel;
	}

	public String getNewMail() {
		return newMail;
	}

	public void setNewMail(String newMail) {
		this.newMail = newMail;
	}

	public String getNewInfo() {
		return newInfo;
	}

	public void setNewInfo(String newInfo) {
		this.newInfo = newInfo;
	}

	public Integer getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(Integer ordersId) {
		this.ordersId = ordersId;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	public Date getSeeDate() {
		return seeDate;
	}

	public void setSeeDate(Date seeDate) {
		this.seeDate = seeDate;
	}

	public String getHouseStatus() {
		return houseStatus;
	}

	public void setHouseStatus(String houseStatus) {
		this.houseStatus = houseStatus;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Orders(UserInfo userInfo, House house, String newName, String time, String newDel, String newMail,
			Date seeDate, String newInfo) {
		super();
		this.userInfo = userInfo;
		this.house = house;
		this.seeDate = seeDate;
		this.newName = newName;
		this.time = time;
		this.newDel = newDel;
		this.newMail = newMail;
		this.newInfo = newInfo;
	}

	public Orders() {
		super();
	}

	@Override
	public String toString() {
		return "Orders [ordersId=" + ordersId + ", userInfo=" + userInfo + ", house=" + house + ", seeDate=" + seeDate
				+ ", houseStatus=" + houseStatus + ", newName=" + newName + ", time=" + time + ", newDel=" + newDel
				+ ", newMail=" + newMail + ", newInfo=" + newInfo + "]";
	}

}
