package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.LimitDao;
import com.geminno.pojo.Limit;
import com.genminno.service.LimitService;
@Service
public class LimitServiceImpl implements LimitService {

	
	@Autowired
	LimitDao limitdao;
	
	public LimitDao getLimitdao() {
		return limitdao;
	}

	public void setLimitdao(LimitDao limitdao) {
		this.limitdao = limitdao;
	}

	@Override
	public void addLimit(Limit limit) {
		// TODO Auto-generated method stub
		limitdao.addLimit(limit);
	}

	@Override
	public void updateLimit(Limit limit) {
		// TODO Auto-generated method stub
		limitdao.updateLimit(limit);
	}

	@Override
	public void deleteLimit(int limitId) {
		// TODO Auto-generated method stub
		limitdao.deleteLimit(limitId);
	}

	@Override
	public Limit getLimitById(int limitId) {
		// TODO Auto-generated method stub
		return limitdao.getLimitById(limitId);
	}

	@Override
	public List<Limit> queryAllLimit() {
		// TODO Auto-generated method stub
		return limitdao.queryAllLimit();
	}

}
