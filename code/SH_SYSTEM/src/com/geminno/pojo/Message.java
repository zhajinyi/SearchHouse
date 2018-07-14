package com.geminno.pojo;

public class Message {
	
	private Integer msgId;//信息ID
	
	private String msgtitle;//信息标题；
	
	private String msgtot;//信息内容；
	
	private Admin admin;
	
	private User user;
	
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

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Message(Integer msgId, String msgtitle, String msgtot,Admin admin,User user) {
		super();
		this.msgId = msgId;
		this.msgtitle = msgtitle;
		this.msgtot = msgtot;
		this.admin=admin;
		this.user=user;
	}
	
	

}
