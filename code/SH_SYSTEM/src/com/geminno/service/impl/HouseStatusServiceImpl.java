package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.HouseStatusDao;
import com.geminno.pojo.HouseStatus;
import com.genminno.service.HouseStatusService;
@Service
public class HouseStatusServiceImpl implements HouseStatusService {
@Autowired
HouseStatusDao housestatusdao;

	public HouseStatusDao getHousestatusdao() {
	return housestatusdao;
}

public void setHousestatusdao(HouseStatusDao housestatusdao) {
	this.housestatusdao = housestatusdao;
}

	@Override
	public void addHouseStatus(HouseStatus housestatus) {
		// TODO Auto-generated method stub
		housestatusdao.addHouseStatus(housestatus);

	}

	@Override
	public void deleteHouseStatus(int houseStatusId) {
		// TODO Auto-generated method stub
		housestatusdao.deleteHouseStatus(houseStatusId);
	}

	@Override
	public void updateHouseStatus(HouseStatus housestatus) {
		// TODO Auto-generated method stub
		housestatusdao.updateHouseStatus(housestatus);
	}

	@Override
	public HouseStatus getHouseStatusById(int houseStatusId) {
		// TODO Auto-generated method stub
		return housestatusdao.getHouseStatusById(houseStatusId);
	}

	@Override
	public List<HouseStatus> queryAllHouseStatus() {
		// TODO Auto-generated method stub
		return housestatusdao.queryAllHouseStatus();
	}

}
