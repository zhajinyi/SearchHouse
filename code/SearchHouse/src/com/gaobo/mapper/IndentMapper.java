package com.gaobo.mapper;

import java.util.List;

import com.gaobo.pojo.Indent;
import com.gaobo.pojo.UserInfo;

public interface IndentMapper {
	// 增
	public void addIndent(Indent indent);

	// 根据用户ID查询订单；
	public List<Indent> getIndentByuserID(String userId);

	// 根据租房编号，删除订单；
	public void deleteIndent(Integer indentId);
}
