package com.geminno.pojo;

import java.security.Timestamp;
import java.sql.Date;

public class Indent {
	
	private Integer indentId;//�ⷿ���
	private User user;//�û�id
	private House house;//����id
	private String inPhone;//�û��ֻ���
	private Date timeStart;//��������
	private Date timeEnd;//��������
	
	public Indent(){
		
		
	}
	public Integer getIndentId() {
		return indentId;
	}
	public void setIndentId(Integer indentId) {
		this.indentId = indentId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public House getHouse() {
		return house;
	}
	public void setHouse(House house) {
		this.house = house;
	}
	public String getInPhone() {
		return inPhone;
	}
	public void setInPhone(String inPhone) {
		this.inPhone = inPhone;
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
	public Indent(Integer indentId, String inPhone, Date timeStart, Date timeEnd) {
		super();
		this.indentId = indentId;
		this.inPhone = inPhone;
		this.timeStart = timeStart;
		this.timeEnd = timeEnd;
	}
	@Override
	public String toString() {
		return "Indent [indentId=" + indentId + ", user=" + user + ", house=" + house + ", inPhone=" + inPhone
				+ ", timeStart=" + timeStart + ", timeEnd=" + timeEnd + "]";
	}
	

	
	
}
