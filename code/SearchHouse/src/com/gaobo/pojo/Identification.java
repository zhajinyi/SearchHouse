package com.gaobo.pojo;

public class Identification {
	private Integer identId;
	private String photoPath;
	private String photoType;
	private UserInfo userInfo;
	public String identstatus;

	public Identification() {

	}

	public Identification(Integer identId, String photoPath, String photoType, UserInfo userInfo, String identstatus) {
		super();
		this.identId = identId;
		this.photoPath = photoPath;
		this.photoType = photoType;
		this.userInfo = userInfo;
		this.identstatus = identstatus;
	}

	public String getIdentstatus() {
		return identstatus;
	}

	public void setIdentstatus(String identstatus) {
		this.identstatus = identstatus;
	}

	public Integer getIdentId() {
		return identId;
	}

	public void setIdentId(Integer identification) {
		this.identId = identification;
	}

	public String getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public String getPhotoType() {
		return photoType;
	}

	public void setPhotoType(String photoType) {
		this.photoType = photoType;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	@Override
	public String toString() {
		return "Identification [identId=" + identId + ", photoPath=" + photoPath + ", photoType=" + photoType
				+ ", userInfo=" + userInfo + ", identstatus=" + identstatus + "]";
	}

}
