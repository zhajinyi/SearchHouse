package com.SearchHouse.pojo;

import java.util.List;

public class ShaiXuan<T> {
	String v1; // 区域
	Integer v2; // 租金 起始
	Integer v21; // 租金 到结束
	Integer v3;// 厅室
	Integer v4;// 装修

	List<T> houses;// 一个查询条件中房子的集合

	public String getV1() {
		return v1;
	}

	public void setV1(String v1) {
		this.v1 = v1;
	}

	public Integer getV2() {
		return v2;
	}

	public void setV2(Integer v2) {
		this.v2 = v2;
	}

	public Integer getV21() {
		return v21;
	}

	public void setV21(Integer v21) {
		this.v21 = v21;
	}

	public Integer getV3() {
		return v3;
	}

	public void setV3(Integer v3) {
		this.v3 = v3;
	}

	public Integer getV4() {
		return v4;
	}

	public void setV4(Integer v4) {
		this.v4 = v4;
	}

	public List<T> getHouses() {
		return houses;
	}

	public void setHouses(List<T> houses) {
		this.houses = houses;
	}

	public ShaiXuan() {
		super();
	}

	public ShaiXuan(String v1, Integer v2, Integer v21, Integer v3, Integer v4, List<T> houses) {
		super();
		this.v1 = v1;
		this.v2 = v2;
		this.v21 = v21;
		this.v3 = v3;
		this.v4 = v4;
		this.houses = houses;
	}

	public ShaiXuan(String v1, Integer v2, Integer v21, Integer v3, Integer v4) {
		super();
		this.v1 = v1;
		this.v2 = v2;
		this.v21 = v21;
		this.v3 = v3;
		this.v4 = v4;
	}

	@Override
	public String toString() {
		return "ShaiXuan [v1=" + v1 + ", v2=" + v2 + ", v21=" + v21 + ", v3=" + v3 + ", v4=" + v4 + "]";
	}

}
