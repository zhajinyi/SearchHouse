package com.geminno.pojo;

public class Admin {
	
	private String adminId;//����ԱID
	private Integer adminPWD;//����Ա����
	private String adminNickName;//����Ա�ǳ�
	private String adminEmail;//����Ա���䣻
	
	
	
	
	public Admin(){
		
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
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
		return "Admin [adminId=" + adminId + ", adminPWD=" + adminPWD + ", adminNickName=" + adminNickName
				+ ", adminEmail=" + adminEmail + "]";
	}

	public Admin(String adminId, Integer adminPWD, String adminNickName, String adminEmail) {
		super();
		this.adminId = adminId;
		this.adminPWD = adminPWD;
		this.adminNickName = adminNickName;
		this.adminEmail = adminEmail;
	}
	
	

	
}
