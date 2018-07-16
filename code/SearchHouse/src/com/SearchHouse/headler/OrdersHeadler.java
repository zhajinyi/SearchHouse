package com.SearchHouse.headler;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.junit.runners.Parameterized.Parameters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SearchHouse.pojo.House;
import com.SearchHouse.pojo.Orders;
import com.SearchHouse.pojo.UserInfo;
import com.SearchHouse.service.HouseInfoService;
import com.SearchHouse.service.OrdersService;
import com.SearchHouse.service.UserInfoService;

@Controller
public class OrdersHeadler {
	@Autowired
	OrdersService ordersService;

	@Autowired
	HouseInfoService houseInfoService;

	@Autowired
	UserInfoService userInfoService;

	public UserInfoService getUserInfoService() {
		return userInfoService;
	}

	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

	public HouseInfoService getHouseInfoService() {
		return houseInfoService;
	}

	public void setHouseInfoService(HouseInfoService houseInfoService) {
		this.houseInfoService = houseInfoService;
	}

	public OrdersService getOrdersService() {
		return ordersService;
	}

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	@RequestMapping("/addOrderInit")
	public String addOrderInit(Integer houseId, String userId, Map<String, Object> map) {
		House house = houseInfoService.getHouseById(houseId);
		UserInfo userinfo = userInfoService.getUserById(userId);
		map.put("house", house);
		map.put("userinfo", userinfo);
		return "contact";
	}
	// ,method=RequestMethod.POST
	// ,@Param("userId") Integer userId,Orders order
	//

	@RequestMapping(value = "/addOrder")
	public String addOrder(Integer houseId, String userId, String newName, String newDel, String newMail,
			String seeDate, String time, String newInfo) {
		House house = houseInfoService.getHouseById(houseId);
		UserInfo userInfo = userInfoService.getUserById(userId);

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = dateFormat.parse(seeDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Orders order1 = new Orders(userInfo, house, newName, time, newDel, newMail, date, newInfo);
		ordersService.addOrder(order1);
		return "forward:/getHouseById";
	}

}
