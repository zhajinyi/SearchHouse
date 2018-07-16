package com.SearchHouse.pojo;

import java.util.List;

public class Page<T> {

	int totalCount;// 总共多少条
	int totalPage;// 总页数
	int pageNo;// 当前页面数
	List<T> houses;

	public Page() {
		super();
	}

	public Page(int totalCount, int totalPage, int pageNo, List<T> houses) {
		super();
		this.totalCount = totalCount;
		this.totalPage = totalPage;

		this.pageNo = pageNo;
		this.houses = houses;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public List<T> getEmps() {
		return houses;
	}

	public void setEmps(List<T> houses) {
		this.houses = houses;
	}

	@Override
	public String toString() {
		return "Page [totalCount=" + totalCount + ", totalPage=" + totalPage + ", pageNo=" + pageNo + ", houses="
				+ houses + "]";
	}

}
