package com.SearchHouse.dao;

import java.util.List;

import com.SearchHouse.pojo.Indent;

public interface IndentDao {
	
	
	public void deleteIndent(Integer indentId);
	
	public void updateIndent(Indent indent);
	
	public Indent getIndentById(Integer indentId);
	
	public List<Indent> queryAllIndents();

}
