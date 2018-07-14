package com.genminno.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.geminno.pojo.Admin;
import com.genminno.service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class AdminAction implements ModelDriven<Admin>,ServletRequestAware {
	
	
	@Autowired
	AdminService adminservice;
	
	public AdminService getAdminservice() {
		return adminservice;
	}


	public void setAdminservice(AdminService adminservice) {
		this.adminservice = adminservice;
	}


	HttpServletRequest request;
	Admin admin;
	
	
	@ModelAttribute
	public void queryAdmins(){
		List<Admin> admins=adminservice.queryAllAdmin();
		request.setAttribute("admins", admins);
		System.out.println(admins);
	}
	@Override
	public Admin getModel() {
		if(admin==null){
			admin=new Admin();
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
		Admin admin=adminservice.getAdminById(adminId);
		if(admin!=null&&adminPWD.equals(admin.getAdminPWD())){
			request.getSession().setAttribute("admin",admin);
			System.out.println(admin);
			return"AdminIndex";
		
		}else{
			return "login";
		}
		
		}
	
	public String queryAllAdmin(){
		
		List<Admin> admins=adminservice.queryAllAdmin();
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
		
		Admin admin=adminservice.getAdminById(adminId);
		
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
	


