package com.SearchHouse.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.SearchHouse.pojo.Admin;
import com.SearchHouse.pojo.House;
import com.SearchHouse.pojo.HouseStatus;
import com.SearchHouse.pojo.Quality;
import com.SearchHouse.pojo.User;
import com.SearchHouse.service.QualityService;
import com.SearchHouse.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class QualityAction implements ModelDriven<Quality>,ServletRequestAware,ServletResponseAware {

	@Autowired
	QualityService qualityservice;
	HttpServletRequest request;
	HttpServletResponse response;
	Quality quality;
	@Autowired
	UserService userService;
	
	
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public QualityService getQualityservice() {
		return qualityservice;
	}

	public void setQualityservice(QualityService qualityservice) {
		this.qualityservice = qualityservice;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public Quality getQuality() {
		return quality;
	}

	public void setQuality(Quality quality) {
		this.quality = quality;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
		
	}

	@Override
	public Quality getModel() {
		if(quality==null){
			quality=new Quality();
		}
		return quality;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response=response;
	}
	
	
	
	public String queryAllQualities(){
		
		
		List<Quality> qualities=qualityservice.queryAllQualities();
		
		Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
		request.put("qualities", qualities);
		System.out.println(qualities);
		
		return "listqualities";
		
	}
	
	public String updateQuality(){
		
		Integer qualityId=(Integer) request.getAttribute("qualityId");
		
		Quality quality=qualityservice.getQualityById(qualityId);
		quality.setQualitResult(1);
		qualityservice.updateQuality(quality);
		if(quality.getQualityNum().equals("")){
			User user=userService.getUserById(quality.getUser().getUserId());
			user.setQualityRating("个人");
			userService.updateUserInfo(user);
		}else{
			User user=userService.getUserById(quality.getUser().getUserId());
			user.setQualityRating("商户");
			userService.updateUserInfo(user);
		}
		
		return "updatequality";
	}
	

}
