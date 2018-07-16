package com.gaobo.pojo;

public class Photo {
	private Integer photoId;
	private String photoName;// Õº∆¨µÿ÷∑
	private Integer houseId;

	public Photo() {
	}

	public Integer getPhotoId() {
		return photoId;
	}

	public void setPhotoId(Integer photoId) {
		this.photoId = photoId;
	}

	public String getPhotoName() {
		return photoName;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}

	public Integer getHouseId() {
		return houseId;
	}

	public void setHouseId(Integer houseId) {
		this.houseId = houseId;
	}

	public Photo(Integer photoId, String photoName, Integer houseId) {
		super();
		this.photoId = photoId;
		this.photoName = photoName;
		this.houseId = houseId;
	}

	@Override
	public String toString() {
		return "Photo [photoId=" + photoId + ", photoName=" + photoName + ", houseId=" + houseId + "]";
	}

}
