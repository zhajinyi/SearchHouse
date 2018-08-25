package com.SearchHouse.pojo;

public class Quality {
	
	private Integer qualityId;//���
	private String qualityName;//��ʵ����
	private String qualityCard;//���֤
	private String qualityNum;//Ӫҵ֤����
	
	private Integer qualitResult;//���  ���� �̼�
	
	private User1 user;//�û����
	
	public Quality(){
		
	}

	public Integer getQualityId() {
		return qualityId;
	}

	public void setQualityId(Integer qualityId) {
		this.qualityId = qualityId;
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

	public Integer getQualitResult() {
		return qualitResult;
	}

	public void setQualitResult(Integer qualitResult) {
		this.qualitResult = qualitResult;
	}

	public User1 getUser() {
		return user;
	}

	public void setUser(User1 user) {
		this.user = user;
	}

	

	@Override
	public String toString() {
		return "Quality [qualityId=" + qualityId + ", qualityName=" + qualityName + ", qualityCard=" + qualityCard
				+ ", qualityNum=" + qualityNum + ", qualitResult=" + qualitResult + ", user=" + user + "]";
	}

	public Quality(Integer qualityId, String qualityName, String qualityCard, String qualityNum, Integer qualitResult) {
		super();
		this.qualityId = qualityId;
		this.qualityName = qualityName;
		this.qualityCard = qualityCard;
		this.qualityNum = qualityNum;
		this.qualitResult = qualitResult;
	}
	
	
	

}
