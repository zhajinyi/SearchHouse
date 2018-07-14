package com.gaobo.pojo;

import java.util.Date;

public class Comment {
	private Integer commentId;// ����id
	private UserInfo user1;// �û����
	private UserInfo user2;// �������
	private String auditName;// ���������
	private House house;// ����
	private String auditStatus;// ���״̬
	private Date auditTime;// ���ʱ��

	public Comment() {

	}

	public Comment(Integer commentId, UserInfo user1, UserInfo user2, String auditName, House house, String auditStatus,
			Date auditTime) {
		super();
		this.commentId = commentId;
		this.user1 = user1;
		this.user2 = user2;
		this.auditName = auditName;
		this.house = house;
		this.auditStatus = auditStatus;
		this.auditTime = auditTime;
	}

	public Integer getCommentId() {
		return commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public UserInfo getUser1() {
		return user1;
	}

	public void setUser1(UserInfo user1) {
		this.user1 = user1;
	}

	public UserInfo getUser2() {
		return user2;
	}

	public void setUser2(UserInfo user2) {
		this.user2 = user2;
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

	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", user1=" + user1 + ", user2=" + user2 + ", auditName=" + auditName
				+ ", house=" + house + ", auditStatus=" + auditStatus + ", auditTime=" + auditTime + "]";
	}

}
