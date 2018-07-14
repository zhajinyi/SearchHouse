package com.gaobo.pojo;


public class Quality {

	private Integer qualityId;//编号
	private UserInfo userInfo;//用户编号
	private String qualityName;//真实姓名
	private String qualityCard;//身份证
	private String qualityNum;//营业证号码
	private Integer qualitResult;//结果  个人 商家
	public Integer getQualityId() {
		return qualityId;
	}
	public void setQualityId(Integer qualityId) {
		this.qualityId = qualityId;
	}
	
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public String getQualityName() {
		return qualityName;
	}
	public void setQualityName(String qualityName) {
		this.qualityName = qualityName;
	}
	public String getQualityCard() {
		return qualityCard;
	}
	public void setQualityCard(String qualityCard) {
		this.qualityCard = qualityCard;
	}
	public String getQualityNum() {
		return qualityNum;
	}
	public void setQualityNum(String qualityNum) {
		this.qualityNum = qualityNum;
	}
	
	
	
	
	
	public Quality(Integer qualityId, UserInfo userInfo, String qualityName, String qualityCard, String qualityNum,
			Integer qualitResult) {
		super();
		this.qualityId = qualityId;
		this.userInfo = userInfo;
		this.qualityName = qualityName;
		this.qualityCard = qualityCard;
		this.qualityNum = qualityNum;
		this.qualitResult = qualitResult;
	}
	public Integer getQualitResult() {
		return qualitResult;
	}
	public void setQualitResult(Integer qualitResult) {
		this.qualitResult = qualitResult;
	}
	public Quality(Integer qualityId, UserInfo userInfo, String qualityName, String qualityCard, String qualityNum) {
		super();
		this.qualityId = qualityId;
		this.userInfo = userInfo;
		this.qualityName = qualityName;
		this.qualityCard = qualityCard;
		this.qualityNum = qualityNum;
		//this.qualitResult = qualitResult;
	}
	public Quality() {
		super();
	}
	@Override
	public String toString() {
		return "Quality [qualityId=" + qualityId + ", userInfo=" + userInfo + ", qualityName=" + qualityName
				+ ", qualityCard=" + qualityCard + ", qualityNum=" + qualityNum +  "]";
	}
	
	
	
	
	
}
