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
 * ȷ���ⷿҳ��Ĳ�ѯ
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

	// ʵ�ʷ���
	// ҳ��indent.jsp�ϵ�ȷ�� �����ݿ��в���һ����Ϣ
	// �ڵ��һ�����ݵ�ʱ�򽫷��ݵ�id�����session����
	@RequestMapping("/addIndent")
	public String addIndent(Indent indent, HttpSession session, Integer houseId) {
		House house = (House) session.getAttribute("house");
		// ��¼֮��user�ŵ�session�� ֱ��ȡ ����Ȣ����
		UserInfo user = (UserInfo) session.getAttribute("user");
		indent.setHouse(house);// ���Ӷ���
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
