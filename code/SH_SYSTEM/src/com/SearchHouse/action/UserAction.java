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

import com.SearchHouse.pojo.House;
import com.SearchHouse.pojo.User1;
import com.SearchHouse.service.UserService;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class UserAction implements ModelDriven<User1>,ServletRequestAware,ServletResponseAware {
	@Autowired
	UserService userservice;
	HttpServletRequest request;
	HttpServletResponse response;
	
	User1 user;
	

	public UserService getUserservice() {
		return userservice;
	}

	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
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

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
		
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}

	@Override
	public User1 getModel() {
		if(user==null){
			user=new User1();
		}
		return user;
		}
	
	
	public String getAllUsers(){
		
		
		
		List<User1> users=userservice.getAllUsers();
		Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
		request.put("users", users);
		System.out.println(users);
		
		return "listusers";
	}
	
	public void getUserById(){
		
		String userId=request.getParameter("userId");
		
		User1 user=userservice.getUserById(userId);
		System.out.println(user);
		
		response.setContentType("text/html;charset=utf-8");
		
    	Gson gson = new Gson();
    	String json = gson.toJson(user);
		
   
        try {
			response.getWriter().print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
