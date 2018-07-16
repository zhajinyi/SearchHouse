package com.SearchHouse.pojo;

import java.sql.Date;

public class Indent {
	private Integer indentId;// �ⷿ���
	private UserInfo userInfo;// �û�id
	private House house;// ����id
	private String inPhone;// �û��ֻ���
	private Date timeStart;// ��������
	private Date timeEnd;// ��������

	public Integer getIndentId() {
		return indentId;
	}

	public void setIndentId(Integer indentId) {
		this.indentId = indentId;
	}

	public String getInPhone() {
		return inPhone;
	}

	public void setInPhone(String inPhone) {
		this.inPhone = inPhone;
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

	public Date getTimeStart() {
		return timeStart;
	}

	public void setTimeStart(Date timeStart) {
		this.timeStart = timeStart;
	}

	public Date getTimeEnd() {
		return timeEnd;
	}

	public void setTimeEnd(Date timeEnd) {
		this.timeEnd = timeEnd;
	}

	public Indent(Integer indentId, UserInfo userInfo, House house, String inPhone, Date timeStart, Date timeEnd) {
		super();
		this.indentId = indentId;
		this.userInfo = userInfo;
		this.house = house;
		this.inPhone = inPhone;
		this.timeStart = timeStart;
		this.timeEnd = timeEnd;
	}

	public Indent(UserInfo userInfo, House house, String inPhone, Date timeStart, Date timeEnd) {
		super();
		this.userInfo = userInfo;
		this.house = house;
		this.inPhone = inPhone;
		this.timeStart = timeStart;
		this.timeEnd = timeEnd;
	}

	public Indent() {
		super();
	}

	@Override
	public String toString() {
		return "Indent [indentId=" + indentId + ", userInfo=" + userInfo.getUserId() + ", house=" + house.getHouseId()
				+ ", inPhone=" + inPhone + ", timeStart=" + timeStart + ", timeEnd=" + timeEnd + "]";
	}

}
