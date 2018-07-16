package com.SearchHouse.pojo;

import java.util.Set;

public class QualityRating {

	private Integer qualityRatingId;// 信用编号
	private String qualityRatingName;// 信用等级名称
	private String qualityRatingInterval;// 信用等级区间
	private Set<House> houses;

	public Integer getQualityRatingId() {
		return qualityRatingId;
	}

	public void setQualityRatingId(Integer qualityRatingId) {
		this.qualityRatingId = qualityRatingId;
	}

	public String getQualityRatingName() {
		return qualityRatingName;
	}

	public void setQualityRatingName(String qualityRatingName) {
		this.qualityRatingName = qualityRatingName;
	}

	public Set<House> getHouses() {
		return houses;
	}

	public void setHouses(Set<House> houses) {
		this.houses = houses;
	}

	public String getQualityRatingInterval() {
		return qualityRatingInterval;
	}

	public void setQualityRatingInterval(String qualityRatingInterval) {
		this.qualityRatingInterval = qualityRatingInterval;
	}

	public QualityRating(Integer qualityRatingId, String qualityRatingName, Set<House> houses) {
		super();
		this.qualityRatingId = qualityRatingId;
		this.qualityRatingName = qualityRatingName;
		this.houses = houses;
	}

	public QualityRating(Integer qualityRatingId, String qualityRatingName, String qualityRatingInterval,
			Set<House> houses) {
		super();
		this.qualityRatingId = qualityRatingId;
		this.qualityRatingName = qualityRatingName;
		this.qualityRatingInterval = qualityRatingInterval;
		this.houses = houses;
	}

	public QualityRating() {
		super();
	}

	@Override
	public String toString() {
		return "QualityRating [qualityRatingId=" + qualityRatingId + ", qualityRatingName=" + qualityRatingName
				+ ", qualityRatingInterval=" + qualityRatingInterval + ", houses=" + houses + "]";
	}

}
