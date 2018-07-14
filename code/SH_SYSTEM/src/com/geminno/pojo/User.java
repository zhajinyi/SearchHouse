package com.geminno.pojo;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.format.annotation.DateTimeFormat;


public class User {
	

	private String userId;//账号
	
	private String userName;//昵称
	
	private String userPassword;//密码
	
	
	
	private String phoneNumber;//手机号,原先是int类型，先改为String，zjy；	
	
	private String userMail;//邮箱
	
	private String realName;//用户真实姓名
	private String userSex;//用户性别
	private Integer userAge;//年龄
	private Integer userCard;//身份证号
	
	private String userPhoto;//头像
	
	@DateTimeFormat(pattern="yyyy-MM-dd") 
	private Date userBirthday;//用户生日
	
	private String address;//通讯地址
	
	private String qualityRating;//个人认证
	
	private Integer userActive;//账户是否被冻结；
	
	
	/*private Set<House> houses;//房屋编号
	
	private Set<Message> msgs;//信息编号
*/
	public User(){
		
		
	}
	
	

	//只有一个id的构造方法
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
