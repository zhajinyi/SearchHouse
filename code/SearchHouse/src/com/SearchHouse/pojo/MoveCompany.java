package com.SearchHouse.pojo;

public class MoveCompany {
	private Integer mcId;// ��ұ��
	String mcName;// ��˾����
	String mcTel;// ��˾�绰
	String mcAddress;// ��˾��ַ
	String fzName;// ����������
	String fzTel;// �����˵绰
	String serviceArea;// ����Χ
	String serviceProjcet;// ������Ŀ
	String wyeAddress;

	public Integer getMcId() {
		return mcId;
	}

	public void setMcId(Integer mcId) {
		this.mcId = mcId;
	}

	public String getMcName() {
		return mcName;
	}

	public void setMcName(String mcName) {
		this.mcName = mcName;
	}

	public String getMcTel() {
		return mcTel;
	}

	public void setMcTel(String mcTel) {
		this.mcTel = mcTel;
	}

	public String getMcAddress() {
		return mcAddress;
	}

	public void setMcAddress(String mcAddress) {
		this.mcAddress = mcAddress;
	}

	public String getFzName() {
		return fzName;
	}

	public void setFzName(String fzName) {
		this.fzName = fzName;
	}

	public String getFzTel() {
		return fzTel;
	}

	public void setFzTel(String fzTel) {
		this.fzTel = fzTel;
	}

	public String getServiceArea() {
		return serviceArea;
	}

	public void setServiceArea(String serviceArea) {
		this.serviceArea = serviceArea;
	}

	public String getServiceProjcet() {
		return serviceProjcet;
	}

	public void setServiceProjcet(String serviceProjcet) {
		this.serviceProjcet = serviceProjcet;
	}

	public String getWyeAddress() {
		return wyeAddress;
	}

	public void setWyeAddress(String wyeAddress) {
		this.wyeAddress = wyeAddress;
	}

	public MoveCompany(Integer mcId, String mcName, String mcTel, String mcAddress, String fzName, String fzTel,
			String serviceArea, String serviceProjcet, String wyeAddress) {
		super();
		this.mcId = mcId;
		this.mcName = mcName;
		this.mcTel = mcTel;
		this.mcAddress = mcAddress;
		this.fzName = fzName;
		this.fzTel = fzTel;
		this.serviceArea = serviceArea;
		this.serviceProjcet = serviceProjcet;
		this.wyeAddress = wyeAddress;
	}

	public MoveCompany() {
		super();
	}

	@Override
	public String toString() {
		return "MoveCompany [mcId=" + mcId + ", mcName=" + mcName + ", mcTel=" + mcTel + ", mcAddress=" + mcAddress
				+ ", fzName=" + fzName + ", fzTel=" + fzTel + ", serviceArea=" + serviceArea + ", serviceProjcet="
				+ serviceProjcet + ", wyeAddress=" + wyeAddress + "]";
	}

}
