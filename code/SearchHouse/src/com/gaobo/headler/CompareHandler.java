package com.gaobo.headler;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gaobo.pojo.Compare;
import com.gaobo.pojo.House;
import com.gaobo.service.CompareService;
import com.gaobo.service.House2Service;
import com.gaobo.service.HouseInfoService;
import com.google.gson.Gson;

@Controller
public class CompareHandler {

	@Autowired
	CompareService compareService;
	@Autowired
	House2Service house2Service;

	public House2Service getHouse2Service() {
		return house2Service;
	}

	public void setHouse2Service(House2Service house2Service) {
		this.house2Service = house2Service;
	}

	public CompareService getCompareService() {
		return compareService;
	}

	public void setCompareService(CompareService compareService) {
		this.compareService = compareService;
	}

	@RequestMapping("/addCompare")
	public void addCompare(Integer houseId, HttpServletResponse response) {

		House house = house2Service.getHouseById(houseId);

		Compare compare = new Compare(house);
		compareService.addCompare(compare);
		Gson gson = new Gson();
		String json = gson.toJson(compare);
		try {
			response.getWriter().print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping("/duiBi")
	public String duiBi(Map<String, Object> map) {

		List<Compare> compares = compareService.getAllCompare();

		map.put("compares", compares);

		return "DuiBi";
	}
}
