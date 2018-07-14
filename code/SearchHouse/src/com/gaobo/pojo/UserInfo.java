package com.gaobo.pojo;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class UserInfo {

	private String userId;// �˺�
	private String userName;// �ǳ�
	private String userPassword;// ����
	private Integer telNumber;// ������
	private String phoneNumber;// �ֻ���,ԭ����int���ͣ��ȸ�ΪString��zjy��
	private String userMail;// ����
	private String realName;// �û���ʵ����
	private String userSex;// �û��Ա�
	private Integer userAge;// ����
	private Integer userCard;// ���֤��
	private String userPhoto;// ͷ��
	private Integer collectNum;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date userBirthday;// �û�����
	private String address;// ͨѶ��ַ
	private String homeAddress;// �����ַ
	private String userTag;// ����ǩ��

	private String qualityRating;// �������õȼ�
	private List<House> houses;// ���ݱ��

	// ֻ��һ��id�Ĺ��췽��
	public UserInfo(String userId) {
		super();
		this.userId = userId;
	}

	public UserInfo(String userId, String phoneNumber, String userMail, String userPassword) {
		super();
		this.userId = userId;
		this.phoneNumber = phoneNumber;
		this.userMail = userMail;
		this.userPassword = userPassword;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public Integer getTelNumber() {
		return telNumber;
	}

	public void setTelNumber(Integer telNumber) {
		this.telNumber = telNumber;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public Integer getUserAge() {
		return userAge;
	}

	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}

	public Integer getUserCard() {
		return userCard;
	}

	public void setUserCard(Integer userCard) {
		this.userCard = userCard;
	}

	public String getUserPhoto() {
		return userPhoto;
	}

	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}

	public Date getUserBirthday() {
		return userBirthday;
	}

	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getHomeAddress() {
		return homeAddress;
	}

	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}

	public String getUserTag() {
		return userTag;
	}

	public void setUserTag(String userTag) {
		this.userTag = userTag;
	}

	public String getQualityRating() {
		return qualityRating;
	}

	public void setQualityRating(String qualityRating) {
		this.qualityRating = qualityRating;
	}

	public List<House> getHouses() {
		return houses;
	}

	public void setHouses(List<House> houses) {
		this.houses = houses;
	}

	public Integer getCollectNum() {
		return collectNum;
	}

	public void setCollectNum(Integer collectNum) {
		this.collectNum = collectNum;
	}

	public UserInfo(String userId, String userName, String userPassword, Integer telNumber, String phoneNumber,
			String userMail, String realName, String userSex, Integer userAge, Integer userCard, String userPhoto,
			Integer collectNum, Date userBirthday, String address, String homeAddress, String userTag,
			String qualityRating) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.telNumber = telNumber;
		this.phoneNumber = phoneNumber;
		this.userMail = userMail;
		this.realName = realName;
		this.userSex = userSex;
		this.userAge = userAge;
		this.userCard = userCard;
		this.userPhoto = userPhoto;
		this.collectNum = collectNum;
		this.userBirthday = userBirthday;
		this.address = address;
		this.homeAddress = homeAddress;
		this.userTag = userTag;
		this.qualityRating = qualityRating;
	}

	public UserInfo() {

	}

	@Override
	public String toString() {
		return "UserInfo [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", telNumber=" + telNumber + ", phoneNumber=" + phoneNumber + ", userMail=" + userMail + ", realName="
				+ realName + ", userSex=" + userSex + ", userAge=" + userAge + ", userCard=" + userCard + ", userPhoto="
				+ userPhoto + ", collectNum=" + collectNum + ", userBirthday=" + userBirthday + ", address=" + address
				+ ", homeAddress=" + homeAddress + ", userTag=" + userTag + ", qualityRating=" + qualityRating + "]";
	}

	public UserInfo(String userName, String userSex, Date userBirthday, String address) {
		super();
		this.userName = userName;
		this.userSex = userSex;
		this.userBirthday = userBirthday;
		this.address = address;
	}

}
