package com.SearchHouse.headler;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.aop.target.HotSwappableTargetSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SearchHouse.pojo.House;
import com.SearchHouse.pojo.Indent;
import com.SearchHouse.pojo.UserInfo;
import com.SearchHouse.service.HouseInfoService;
import com.SearchHouse.service.IndentService;
import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;

/**
 * 确认租房页面的查询
 */
@Controller
public class IndentHeadler {

	@Autowired
	IndentService indentService;
	@Autowired
	HouseInfoService houseInfoService;

	public IndentService getIndentService() {
		return indentService;
	}

	public void setIndentService(IndentService indentService) {
		this.indentService = indentService;
	}

	public HouseInfoService getHouseInfoService() {
		return houseInfoService;
	}

	public void setHouseInfoService(HouseInfoService houseInfoService) {
		this.houseInfoService = houseInfoService;
	}

	// 实际方法
	// 页面indent.jsp上的确认 往数据库中插入一条信息
	// 在点击一个房屋的时候将房屋的id存放在session域中
	@RequestMapping("/addIndent")
	public String addIndent(Indent indent, HttpSession session, Integer houseId) {
		House house = (House) session.getAttribute("house");
		// 登录之后user放到session中 直接取 现在娶不到
		UserInfo user = (UserInfo) session.getAttribute("user");
		indent.setHouse(house);// 房子对象
		indent.setUserInfo(user);
		indentService.addIndent(indent);
		Integer indentid=indent.getIndentId();
		session.setAttribute("indentid", indentid);
		
		return "indexzf";
	}

	@RequestMapping("/getIndentByuserID")
	public String getIndentByuserID(String userId, Map<String, Object> map) {

		List<Indent> indents = indentService.getIndentByuserID(userId);
		map.put("indents", indents);

		return "/UserCenter/UserInfo/MyDeal";
	}

	@RequestMapping("/deleteIndent")
	public String deleteIndent(int indentId) {
		indentService.deleteIndent(indentId);

		return "/UserCenter/UserInfo/MyDeal";

	}

}
