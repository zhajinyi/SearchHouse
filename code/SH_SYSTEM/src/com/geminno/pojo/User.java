package com.geminno.pojo;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.format.annotation.DateTimeFormat;


public class User {
	

	private String userId;//�˺�
	
	private String userName;//�ǳ�
	
	private String userPassword;//����
	
	
	
	private String phoneNumber;//�ֻ���,ԭ����int���ͣ��ȸ�ΪString��zjy��	
	
	private String userMail;//����
	
	private String realName;//�û���ʵ����
	private String userSex;//�û��Ա�
	private Integer userAge;//����
	private Integer userCard;//���֤��
	
	private String userPhoto;//ͷ��
	
	@DateTimeFormat(pattern="yyyy-MM-dd") 
	private Date userBirthday;//�û�����
	
	private String address;//ͨѶ��ַ
	
	private String qualityRating;//������֤
	
	private Integer userActive;//�˻��Ƿ񱻶��᣻
	
	
	/*private Set<House> houses;//���ݱ��
	
	private Set<Message> msgs;//��Ϣ���
*/
	public User(){
		
		
	}
	
	

	//ֻ��һ��id�Ĺ��췽��
	public User(String userId) {
		super();
		this.userId = userId;
	}

	public String getQualityRating() {
		return qualityRating;
	}



	public void setQualityRating(String qualityRating) {
		this.qualityRating = qualityRating;
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

	public Integer getUserActive() {
		return userActive;
	}

	public void setUserActive(Integer userActive) {
		this.userActive = userActive;
	}



	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword + ", phoneNumber="
				+ phoneNumber + ", userMail=" + userMail + ", realName=" + realName + ", userSex=" + userSex
				+ ", userAge=" + userAge + ", userCard=" + userCard + ", userPhoto=" + userPhoto + ", userBirthday="
				+ userBirthday + ", address=" + address + ", qualityRating=" + qualityRating + ", userActive="
				+ userActive + "]";
	}



	public User(String userId, String userName, String userPassword, String phoneNumber, String userMail,
			String realName, String userSex, Integer userAge, Integer userCard, String userPhoto, Date userBirthday,
			String address, String qualityRating, Integer userActive) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.phoneNumber = phoneNumber;
		this.userMail = userMail;
		this.realName = realName;
		this.userSex = userSex;
		this.userAge = userAge;
		this.userCard = userCard;
		this.userPhoto = userPhoto;
		this.userBirthday = userBirthday;
		this.address = address;
		this.qualityRating = qualityRating;
		this.userActive = userActive;
	}

	


	



	
	
}
