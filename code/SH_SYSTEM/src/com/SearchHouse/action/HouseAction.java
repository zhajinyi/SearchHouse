package com.SearchHouse.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.SearchHouse.pojo.Administrator;
import com.SearchHouse.pojo.House;
import com.SearchHouse.pojo.HouseStatus;
import com.SearchHouse.service.HouseService;
import com.SearchHouse.service.HouseStatusService;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class HouseAction implements ModelDriven<House>,ServletRequestAware,ServletResponseAware{
	@Autowired
	HouseService houseservice;
	HouseStatusService housestatusservice;
	
	HttpServletRequest request;
	HttpServletResponse response;

	House house;
	

	public HouseService getHouseservice() {
		return houseservice;
	}

    public void setHouseservice(HouseService houseservice) {
		this.houseservice = houseservice;
	}
    
    @Override
	public House getModel() {
		if(house==null){
			house=new House();
		}
		return house;
		}
    @Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response=response;
	}

    
    @Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
    
    public String queryAllhouses(){
    	
    	List<House> houses=houseservice.queryHouse();
        Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
		
		request.put("houses", houses);
		
		return "list";
    	
    }
    
public String queryAllhouses2(){
    	
    	List<House> houses=houseservice.queryHouse();
        Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
		
		request.put("houses", houses);
		
		return "list2";
    	
    }


public String queryAllhouses3(){
	
	List<House> houses=houseservice.queryHouse();
    Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
	
	request.put("houses", houses);
	
	return "list3";
	
}
    
    public void getHouseById(){
    	
    	
    	int houseId=(Integer) request.getAttribute("houseId");
    	
    	House house=houseservice.getHouseById(houseId);
    	/*
    	Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
    	request.put("house",house);*/
    	response.setContentType("text/html;charset=utf-8");
    	Gson gson = new Gson();
    	String json = gson.toJson(house);
    	
    	try {
			response.getWriter().print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	
    	
    	 }
    
    public String unchecked(){
    	int houseId=(Integer) request.getAttribute("houseId");
    	House house=houseservice.getHouseById(houseId);
    	
    	HouseStatus housestatus=house.getHouseStatus();
    	housestatus.setHouseStatusId(3);
    	house.setHouseStatus(housestatus);
    	
    	houseservice.updateHouse(house);
    	
    	
    	
		return "update";
    	
    	
    	
    	
    }
    
    public String updateHouse(){
    	int houseId=(Integer) request.getAttribute("houseId");
    	House house=houseservice.getHouseById(houseId);
    	
    	HouseStatus housestatus=house.getHouseStatus();
    	housestatus.setHouseStatusId(1);
    	house.setHouseStatus(housestatus);
    	
    	houseservice.updateHouse(house);
    	
        
    	
    	return "update";
    }

	
}
