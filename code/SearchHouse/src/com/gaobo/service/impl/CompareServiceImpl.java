package com.gaobo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gaobo.mapper.CompareMapper;
import com.gaobo.pojo.Compare;
import com.gaobo.service.CompareService;

@Service
@Transactional
public class CompareServiceImpl implements CompareService {

	@Resource
	CompareMapper compareMapper;

	public CompareMapper getCompareMapper() {
		return compareMapper;
	}

	public void setCompareMapper(CompareMapper compareMapper) {
		this.compareMapper = compareMapper;
	}

	@Override
	public void addCompare(Compare compare) {
		// TODO Auto-generated method stub
		compareMapper.addCompare(compare);
	}

	@Override
	public void deleteCompare(Integer compareId) {
		// TODO Auto-generated method stub
		compareMapper.deleteCompare(compareId);
	}

	@Override
	public List<Compare> getAllCompare() {
		// TODO Auto-generated method stub
		return compareMapper.getAllCompare();
	}

}
