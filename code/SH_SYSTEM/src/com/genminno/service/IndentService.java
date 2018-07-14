package com.genminno.service;

import java.util.List;

import com.geminno.pojo.Indent;

public interface IndentService {

	

	public void deleteIndent(Integer indentId);
	
	public void updateIndent(Indent indent);
	
	public Indent getIndentById(Integer indentId);
	
	public List<Indent> queryAllIndents();
}
