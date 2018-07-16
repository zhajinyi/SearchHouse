package com.SearchHouse.pojo;

import java.util.Date;

public class Audit {

	private Integer auditId;// …Û∫Àid
	private String auditName;// …Û∫À»À–’√˚
	private House house;// ∑øŒ›
	private String auditStatus;// …Û∫À◊¥Ã¨
	private Date auditTime;// …Û∫À ±º‰

	public Integer getAuditId() {
		return auditId;
	}

	public void setAuditId(Integer auditId) {
		this.auditId = auditId;
	}

	public String getAuditName() {
		return auditName;
	}

	public void setAuditName(String auditName) {
		this.auditName = auditName;
	}

	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	public String getAuditStatus() {
		return auditStatus;
	}

	public void setAuditStatus(String auditStatus) {
		this.auditStatus = auditStatus;
	}

	public Date getAuditTime() {
		return auditTime;
	}

	public void setAuditTime(Date auditTime) {
		this.auditTime = auditTime;
	}

	public Audit(Integer auditId, String auditName, House house, String auditStatus, Date auditTime) {
		super();
		this.auditId = auditId;
		this.auditName = auditName;
		this.house = house;
		this.auditStatus = auditStatus;
		this.auditTime = auditTime;
	}

	public Audit() {
		super();
	}

	@Override
	public String toString() {
		return "Audit [auditId=" + auditId + ", auditName=" + auditName + ", house=" + house + ", auditStatus="
				+ auditStatus + ", auditTime=" + auditTime + "]";
	}

}
