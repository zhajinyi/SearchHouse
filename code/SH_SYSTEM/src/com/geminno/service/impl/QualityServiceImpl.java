package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.QualityDao;
import com.geminno.pojo.Quality;
import com.genminno.service.QualityService;
@Service
public class QualityServiceImpl implements QualityService {
	
	@Autowired
	QualityDao qualitydao;

	public QualityDao getQualitydao() {
		return qualitydao;
	}

	public void setQualitydao(QualityDao qualitydao) {
		this.qualitydao = qualitydao;
	}

	@Override
	public void updateQuality(Quality quality) {
		// TODO Auto-generated method stub
		qualitydao.updateQuality(quality);
	}

	@Override
	public void deleteQuality(Integer qualityId) {
		// TODO Auto-generated method stub
		qualitydao.deleteQuality(qualityId);
	}

	@Override
	public Quality getQualityById(Integer qualityId) {
		// TODO Auto-generated method stub
		return qualitydao.getQualityById(qualityId);
	}

	@Override
	public List<Quality> queryAllQualities() {
		// TODO Auto-generated method stub
		return qualitydao.queryAllQualities();
	}

}
