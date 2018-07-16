package com.SearchHouse.pojo;

import java.util.Set;

public class Limit {

	private Integer limitIdFk;
	private String limitName;
	public Limit(){
		
	}
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
	@Override
	public String toString() {
		return "Limit [limitIdFk=" + limitIdFk + ", limitName=" + limitName + "]";
	}
	public Limit(Integer limitIdFk, String limitName) {
		super();
		this.limitIdFk = limitIdFk;
		this.limitName = limitName;
	}
	
	
	
	
}
