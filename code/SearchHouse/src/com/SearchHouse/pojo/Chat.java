package com.SearchHouse.pojo;

import java.util.Date;

public class Chat {
	private Integer chatId;
	private UserInfo userInfo1;// 用户1
	private UserInfo userInfo2;// 用户2
	private String charText;// 内容
	private Date Time;

	public Integer getChatId() {
		return chatId;
	}

	public void setChatId(Integer chatId) {
		this.chatId = chatId;
	}

	public UserInfo getUserInfo1() {
		return userInfo1;
	}

	public void setUserInfo1(UserInfo userInfo1) {
		this.userInfo1 = userInfo1;
	}

	public UserInfo getUserInfo2() {
		return userInfo2;
	}

	public void setUserInfo2(UserInfo userInfo2) {
		this.userInfo2 = userInfo2;
	}

	public String getCharText() {
		return charText;
	}

	public void setCharText(String charText) {
		this.charText = charText;
	}

	public Date getTime() {
		return Time;
	}

	public void setTime(Date time) {
		Time = time;
	}

	public Chat(Integer chatId, UserInfo userInfo1, UserInfo userInfo2, String charText, Date time) {
		super();
		this.chatId = chatId;
		this.userInfo1 = userInfo1;
		this.userInfo2 = userInfo2;
		this.charText = charText;
		Time = time;
	}

	public Chat() {
		super();
	}

	@Override
	public String toString() {
		return "Chat [chatId=" + chatId + ", userInfo1=" + userInfo1 + ", userInfo2=" + userInfo2 + ", charText="
				+ charText + ", Time=" + Time + "]";
	}

}
