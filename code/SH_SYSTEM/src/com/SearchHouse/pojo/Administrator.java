package com.SearchHouse.pojo;

public class Administrator {
	
	private String adminID;//管理员ID
	private Integer adminPWD;//管理员密码
	private String adminNickName;//管理员昵称
	private String adminEmail;//管理员邮箱；
	
	
	
	
	public Administrator(){
		
	}

	public String getAdminId() {
		return adminID;
	}

	public void setAdminId(String adminId) {
		this.adminID = adminId;
	}

	public Integer getAdminPWD() {
		return adminPWD;
	}

	public void setAdminPWD(Integer adminPWD) {
		this.adminPWD = adminPWD;
	}

	public String getAdminNickName() {
		return adminNickName;
	}

	public void setAdminNickName(String adminNickName) {
		this.adminNickName = adminNickName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	/*public Set<Message> getMsgs() {
		return msgs;
	}

	public void setMsgs(Set<Message> msgs) {
		this.msgs = msgs;
	}*/

	@Override
	public String toString() {
		return "Admin [adminId=" + adminID + ", adminPWD=" + adminPWD + ", adminNickName=" + adminNickName
				+ ", adminEmail=" + adminEmail + "]";
	}

	public Administrator(String adminId, Integer adminPWD, String adminNickName, String adminEmail) {
		super();
		this.adminID = adminId;
		this.adminPWD = adminPWD;
		this.adminNickName = adminNickName;
		this.adminEmail = adminEmail;
	}
	
	

	
}
