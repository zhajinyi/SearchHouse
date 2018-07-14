package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.IndentDao;
import com.geminno.pojo.Indent;
import com.genminno.service.IndentService;
@Service
public class IndentServiceImpl implements IndentService {
	@Autowired
	IndentDao indentdao;
	
	
	
	public IndentDao getIndentdao() {
		return indentdao;
	}

	public void setIndentdao(IndentDao indentdao) {
		this.indentdao = indentdao;
	}

	@Override
	public void deleteIndent(Integer indentId) {
		// TODO Auto-generated method stub
		indentdao.deleteIndent(indentId);
	}

	@Override
	public void updateIndent(Indent indent) {
		// TODO Auto-generated method stub
		indentdao.updateIndent(indent);
	}

	@Override
	public Indent getIndentById(Integer indentId) {
		// TODO Auto-generated method stub
		return indentdao.getIndentById(indentId);
	}

	@Override
	public List<Indent> queryAllIndents() {
		// TODO Auto-generated method stub
		return indentdao.queryAllIndents();
	}

}
