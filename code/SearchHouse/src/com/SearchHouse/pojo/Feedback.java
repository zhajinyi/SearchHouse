package com.SearchHouse.pojo;

public class Feedback {

	private UserInfo useraInfo;// 用户编号
	private House house;// 房屋编号
	private String feedbackResult;// 处理结果
	private String feedbackName;// 处理人员

	public UserInfo getUseraInfo() {
		return useraInfo;
	}

	public void setUseraInfo(UserInfo useraInfo) {
		this.useraInfo = useraInfo;
	}

	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	public String getFeedbackResult() {
		return feedbackResult;
	}

	public void setFeedbackResult(String feedbackResult) {
		this.feedbackResult = feedbackResult;
	}

	public String getFeedbackName() {
		return feedbackName;
	}

	public void setFeedbackName(String feedbackName) {
		this.feedbackName = feedbackName;
	}

	public Feedback(UserInfo useraInfo, House house, String feedbackResult, String feedbackName) {
		super();
		this.useraInfo = useraInfo;
		this.house = house;
		this.feedbackResult = feedbackResult;
		this.feedbackName = feedbackName;
	}

	public Feedback() {
		super();
	}

	@Override
	public String toString() {
		return "Feedback [useraInfo=" + useraInfo + ", house=" + house + ", feedbackResult=" + feedbackResult
				+ ", feedbackName=" + feedbackName + "]";
	}

}
