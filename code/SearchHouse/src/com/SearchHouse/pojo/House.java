package com.SearchHouse.pojo;

import java.util.ArrayList;
import java.util.List;

public class House {
	private Integer houseId;// 房屋id
	private Integer houseTypeId;// 租房类型编号（整租或合租 二选一单选 类似性别）
	private String houseAddress;// 房屋地址
	private String keyName;
	private Integer collectNum;

	public String getKeyName() {
		return keyName;
	}

	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}

	private String locationName;// 小区名称
	private String houseUnit;// 房屋户型
	private Integer houseFloor;// 楼层
	private Integer houseFloorTotal;// 一共楼层
	private Integer houseArea;// 住房面积
	private Integer housePrice;// 租金
	private String houseName;// 标题
	private String detailedIntro;// 详细介绍
	private String photo;// 房产证副本照片

	private List<String> priceContains = new ArrayList<String>();// 租金包含
	private List<String> photos = new ArrayList<String>();// 多张图片地址

	private Pay pay;// 付款编号
	private BedRoom bedRoom;// 卧室编号 一对一单向的 房屋--》卧室
	private Limit limit;// 限制编号 一对一单向的 房屋--》限制
	private HouseSetType houseSetType;// 住宅类型编号 一对一单向的 房屋--》住宅类型
	private Fitment fitment;// 装修编号
	private HouseStatus houseStatus;
	// 房屋状态编号
	/*
	 * private Photo photo;//房产证副本照片
	 */ private UserInfo userInfo;// 用户编号

	// 只有一个id的构造方法
	public House(Integer houseId) {
		super();
		this.houseId = houseId;
	}

	@Override
	public String toString() {
		return "House [houseId=" + houseId + ", houseTypeId=" + houseTypeId + ", houseAddress=" + houseAddress
				+ ", keyName=" + keyName + ", locationName=" + locationName + ", houseUnit=" + houseUnit
				+ ", houseFloor=" + houseFloor + ", houseFloorTotal=" + houseFloorTotal + ", houseArea=" + houseArea
				+ ", housePrice=" + housePrice + ", houseName=" + houseName + ", detailedIntro=" + detailedIntro
				+ ", photo=" + photo + ", priceContains=" + priceContains + ", photos=" + photos + ", pay=" + pay
				+ ", bedRoom=" + bedRoom + ", limit=" + limit + ", houseSetType=" + houseSetType + ", fitment="
				+ fitment + ", houseStatus=" + houseStatus + ", userInfo=" + userInfo + ",collectNum=" + collectNum
				+ "]";
	}

	public House(String locationName, String houseUnit) {
		super();
		this.locationName = locationName;
		this.houseUnit = houseUnit;
	}

	public String getHouseAddress() {
		return houseAddress;
	}

	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}

	public Integer getHouseId() {
		return houseId;
	}

	public void setHouseId(Integer houseId) {
		this.houseId = houseId;
	}

	public Integer getHouseTypeId() {
		return houseTypeId;
	}

	public void setHouseTypeId(Integer houseTypeId) {
		this.houseTypeId = houseTypeId;
	}

	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	public String getHouseUnit() {
		return houseUnit;
	}

	public void setHouseUnit(String houseUnit) {
		this.houseUnit = houseUnit;
	}

	public Integer getHouseFloor() {
		return houseFloor;
	}

	public void setHouseFloor(Integer houseFloor) {
		this.houseFloor = houseFloor;
	}

	public Integer getHouseFloorTotal() {
		return houseFloorTotal;
	}

	public void setHouseFloorTotal(Integer houseFloorTotal) {
		this.houseFloorTotal = houseFloorTotal;
	}

	public Integer getHouseArea() {
		return houseArea;
	}

	public void setHouseArea(Integer houseArea) {
		this.houseArea = houseArea;
	}

	public BedRoom getBedRoom() {
		return bedRoom;
	}

	public void setBedRoom(BedRoom bedRoom) {
		this.bedRoom = bedRoom;
	}

	public Limit getLimit() {
		return limit;
	}

	public void setLimit(Limit limit) {
		this.limit = limit;
	}

	public HouseSetType getHouseSetType() {
		return houseSetType;
	}

	public void setHouseSetType(HouseSetType houseSetType) {
		this.houseSetType = houseSetType;
	}

	public Fitment getFitment() {
		return fitment;
	}

	public void setFitment(Fitment fitment) {
		this.fitment = fitment;
	}

	public Integer getHousePrice() {
		return housePrice;
	}

	public void setHousePrice(Integer housePrice) {
		this.housePrice = housePrice;
	}

	public Pay getPay() {
		return pay;
	}

	public void setPay(Pay pay) {
		this.pay = pay;
	}

	public List<String> getPriceContains() {
		return priceContains;
	}

	public void setPriceContains(List<String> priceContains) {
		this.priceContains = priceContains;
	}

	public String getHouseName() {
		return houseName;
	}

	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}

	public String getDetailedIntro() {
		return detailedIntro;
	}

	public void setDetailedIntro(String detailedIntro) {
		this.detailedIntro = detailedIntro;
	}

	public List<String> getPhotos() {
		return photos;
	}

	public void setPhotos(List<String> photos) {
		this.photos = photos;
	}

	public HouseStatus getHouseStatus() {
		return houseStatus;
	}

	public void setHouseStatus(HouseStatus houseStatus) {
		this.houseStatus = houseStatus;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public Integer getCollectNum() {
		return collectNum;
	}

	public void setCollectNum(Integer collectNum) {
		this.collectNum = collectNum;
	}

	public House(Integer houseId, Integer houseTypeId, String houseAddress, String locationName, String houseUnit,
			Integer houseFloor, Integer houseFloorTotal, Integer houseArea, String otherDeploy, Integer housePrice,
			String houseName, String photo, List<String> priceContains, List<String> photos, Pay pay, BedRoom bedRoom,
			Limit limit, HouseSetType houseSetType, Fitment fitment, HouseStatus houseStatus, UserInfo userInfo,
			String keyName, Integer collectNum) {
		super();
		this.houseId = houseId;
		this.houseTypeId = houseTypeId;
		this.houseAddress = houseAddress;
		this.locationName = locationName;
		this.houseUnit = houseUnit;
		this.houseFloor = houseFloor;
		this.houseFloorTotal = houseFloorTotal;
		this.houseArea = houseArea;
		this.housePrice = housePrice;
		this.houseName = houseName;
		this.detailedIntro = detailedIntro;
		this.photo = photo;
		this.priceContains = priceContains;
		this.photos = photos;
		this.pay = pay;
		this.bedRoom = bedRoom;
		this.limit = limit;
		this.houseSetType = houseSetType;
		this.fitment = fitment;
		this.houseStatus = houseStatus;
		this.userInfo = userInfo;
		this.keyName = keyName;
		this.collectNum = collectNum;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public House() {
		super();
	}

}
