package com.SearchHouse.pojo;

public class Message {
	
	private Integer msgId;//信息ID
	
	private String msgtitle;//信息标题；
	
	private String msgtot;//信息内容；
	
	private Administrator admin;
	
	private User1 user;
	
	private Message(){
		
	}

	public Integer getMsgId() {
		return msgId;
	}

	public void setMsgId(Integer msgId) {
		this.msgId = msgId;
	}

	public String getMsgtitle() {
		return msgtitle;
	}

	public void setMsgtitle(String msgtitle) {
		this.msgtitle = msgtitle;
	}

	public String getMsgtot() {
		return msgtot;
	}

	public void setMsgtot(String msgtot) {
		this.msgtot = msgtot;
	}

	public Administrator getAdmin() {
		return admin;
	}

	public void setAdmin(Administrator admin) {
		this.admin = admin;
	}

	public User1 getUser() {
		return user;
	}

	public void setUser(User1 user) {
		this.user = user;
	}

	public Message(Integer msgId, String msgtitle, String msgtot,Administrator admin,User1 user) {
		super();
		this.msgId = msgId;
		this.msgtitle = msgtitle;
		this.msgtot = msgtot;
		this.admin=admin;
		this.user=user;
	}
	
	

}
