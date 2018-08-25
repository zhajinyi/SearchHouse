package com.SearchHouse.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.SearchHouse.pojo.Administrator;
import com.SearchHouse.service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class AdminAction implements ModelDriven<Administrator>,ServletRequestAware {
	
	
	@Autowired
	AdminService adminservice;
	
	public AdminService getAdminservice() {
		return adminservice;
	}


	public void setAdminservice(AdminService adminservice) {
		this.adminservice = adminservice;
	}


	HttpServletRequest request;
	Administrator admin;
	
	
	@ModelAttribute
	public void queryAdmins(){
		List<Administrator> admins=adminservice.queryAllAdmin();
		request.setAttribute("admins", admins);
		System.out.println(admins);
	}
	@Override
	public Administrator getModel() {
		if(admin==null){
			admin=new Administrator();
		}
		return admin;
	}


	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
	public String getAdminById(){
		
		String adminId=(String) request.getAttribute("adminId");
		Integer adminPWD=(Integer) request.getAttribute("adminPWD");
		
		System.out.println(adminId+":"+adminPWD);
		Administrator admin=adminservice.getAdminById(adminId);
		if(admin!=null&&adminPWD.equals(admin.getAdminPWD())){
			request.getSession().setAttribute("admin",admin);
			System.out.println(admin);
			return"AdminIndex";
		
		}else{
			return "login";
		}
		
		}
	
	public String queryAllAdmin(){
		
		List<Administrator> admins=adminservice.queryAllAdmin();
		request.setAttribute("admins", admins);
		System.out.println(admins);
		
		
		
		return "listAdmin";
		
		
		
	}
	
	public String deleteAdmin(){
		
		String adminId=(String) request.getAttribute("adminId");
		adminservice.deleteAdmin(adminId);
		System.out.println("1");
		
		return "deleteadmin";
		}
	
	public String updateAdminInit(){
		
		String adminId=(String) request.getAttribute("adminId");
		
		Administrator admin=adminservice.getAdminById(adminId);
		
		Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
		
		request.put("admin", admin);
		
		return "updateinit";
		
		
	}
	public String updateAdmin(){
		
		
		adminservice.updateAdmin(admin);
		request.getSession().setAttribute("admin", admin);
		
		return "updateadmin";
	}
	
	
	
	
	

		
		
	}
	


