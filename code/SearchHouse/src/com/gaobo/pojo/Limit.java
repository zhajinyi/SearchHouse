package com.gaobo.pojo;

import java.util.Set;

public class Limit {

	private Integer limitIdFk;
	private String limitName;
	private Set<House> houses;

	public Integer getLimitIdFk() {
		return limitIdFk;
	}

	public void setLimitIdFk(Integer limitIdFk) {
		this.limitIdFk = limitIdFk;
	}

	public String getLimitName() {
		return limitName;
	}

	public void setLimitName(String limitName) {
		this.limitName = limitName;
	}

	public Set<House> getHouses() {
		return houses;
	}

	public void setHouses(Set<House> houses) {
		this.houses = houses;
	}

	public Limit(Integer limitIdFk, String limitName) {
		super();
		this.limitIdFk = limitIdFk;
		this.limitName = limitName;
	}

	public Limit() {
		super();
	}

	@Override
	public String toString() {
		return "Limit [limitIdFk=" + limitIdFk + ", limitName=" + limitName + "]";
	}

}
