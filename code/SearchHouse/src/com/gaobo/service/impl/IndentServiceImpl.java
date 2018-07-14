package com.gaobo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaobo.mapper.IndentMapper;
import com.gaobo.pojo.Indent;
import com.gaobo.service.IndentService;

@Service
public class IndentServiceImpl implements IndentService {
	@Autowired
	IndentMapper indentMapper;

	public IndentMapper getIndentMapper() {
		return indentMapper;
	}

	public void setIndentMapper(IndentMapper indentMapper) {
		this.indentMapper = indentMapper;
	}

	@Override
	public void addIndent(Indent indent) {
		indentMapper.addIndent(indent);
	}

	@Override
	public List<Indent> getIndentByuserID(String userId) {
		// TODO Auto-generated method stub
		return indentMapper.getIndentByuserID(userId);
	}

	@Override
	public void deleteIndent(Integer indentId) {
		indentMapper.deleteIndent(indentId);

	}
}
