package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.HouseSetTypeDao;
import com.geminno.pojo.HouseSetType;
import com.genminno.service.HouseSetTypeService;
@Service
public class HouseSetTypeServiceImpl implements HouseSetTypeService {
@Autowired
HouseSetTypeDao housesettypedao;


	public HouseSetTypeDao getHousesettypedao() {
	return housesettypedao;
}

public void setHousesettypedao(HouseSetTypeDao housesettypedao) {
	this.housesettypedao = housesettypedao;
}

	@Override
	public void addHouseSetType(HouseSetType housesettype) {
		// TODO Auto-generated method stub
		housesettypedao.addHouseSetType(housesettype);
	}

	@Override
	public void deleteHouseSetType(int houseSetTypeId) {
		// TODO Auto-generated method stub
		housesettypedao.deleteHouseSetType(houseSetTypeId);
	}

	@Override
	public void updateHouseSetType(HouseSetType housesettype) {
		// TODO Auto-generated method stub
		housesettypedao.updateHouseSetType(housesettype);
	}

	@Override
	public HouseSetType getById(int houseSetTypeId) {
		// TODO Auto-generated method stub
		return housesettypedao.getById(houseSetTypeId);
	}

	@Override
	public List<HouseSetType> queryAllHouseSetType() {
		// TODO Auto-generated method stub
		return housesettypedao.queryAllHouseSetType();
	}

}
