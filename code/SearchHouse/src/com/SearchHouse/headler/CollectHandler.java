package com.gaobo.headler;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gaobo.pojo.Collect;
import com.gaobo.pojo.House;
import com.gaobo.pojo.UserInfo;
import com.gaobo.service.CollectService;
import com.gaobo.service.HouseInfoService;
import com.gaobo.service.UserInfoService;
import com.google.gson.Gson;

@Controller
public class CollectHandler {
	@Autowired
	CollectService collectservice;

	@Autowired
	UserInfoService userinfoservice;

	@Autowired
	HouseInfoService houseinfoservice;

	public CollectService getCollectservice() {
		return collectservice;
	}

	public void setCollectservice(CollectService collectservice) {
		this.collectservice = collectservice;
	}

	public UserInfoService getUserinfoservice() {
		return userinfoservice;
	}

	public void setUserinfoservice(UserInfoService userinfoservice) {
		this.userinfoservice = userinfoservice;
	}

	public HouseInfoService getHouseinfoservice() {
		return houseinfoservice;
	}

	public void setHouseinfoservice(HouseInfoService houseinfoservice) {
		this.houseinfoservice = houseinfoservice;
	}

	@RequestMapping("/addcollect")
	public void addCollect(Integer houseId, String userId, Integer collectNum, HttpServletResponse response) {

		List<Collect> collects = collectservice.listAllCollect();
		
		House house = houseinfoservice.getHouseById(houseId);
		UserInfo user = userinfoservice.getUserById(userId);
		if (collects.size() != 0) {
			for (Collect collect : collects) {
				if (collect.getHouse().getHouseId() == houseId && collect.getUserInfo().getUserId().equals(userId)) {
					
					collectNum = collectNum - 1;

					collectservice.deleteCollect(houseId, userId);

					Gson gson = new Gson();
					String json = gson.toJson(collectNum);
					try {
						response.getWriter().print(json);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} else {
					
					collectservice.addClollect(houseId, userId);
					collectNum = collectNum + 1;
					Gson gson = new Gson();
					String json = gson.toJson(collectNum);
					try {
						response.getWriter().print(json);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		} else {
			
			collectservice.addClollect(houseId, userId);
			collectNum = collectNum + 1;
			Gson gson = new Gson();
			String json = gson.toJson(collectNum);
			try {
				response.getWriter().print(json);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@RequestMapping("/updatecollect")
	public String updateCollect(Collect collect) {
		collectservice.updateCollect(collect);

		return "success";

	}

	@RequestMapping("/listcollect1")
	public String listCollect1(Map<String, Object> map) {
		List<Collect> collects = collectservice.listAllCollect();
		map.put("collects", collects);
		return "/UserCenter/UserInfo/Collection/CollectionInfo";

	}

	@RequestMapping("/listcollect2")
	public String listCollect2(Map<String, Object> map) {
		List<Collect> collects = collectservice.listAllCollect();
		map.put("collects", collects);

		return "/UserCenter/UserInfo/Collection/CollectedMyInfo";

	}

	@RequestMapping("/listcollect3")
	public String listCollect3(Map<String, Object> map) {
		List<Collect> collects = collectservice.listAllCollect();
		map.put("collects", collects);

		return "/UserCenter/UserInfo/Collection/BrowsedInfo";

	}

}
