package com.zhajinyi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.RequestScope;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhajinyi.bean.Employee;
import com.zhajinyi.bean.Msg;
import com.zhajinyi.service.EmployeeService;
/**
 * 处理员工crud请求
 * @author ZhaJinyi
 *
 */
@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping("/emps")
	public String getEmps(@RequestParam(value="pn",defaultValue="1")Integer pn,
			Model model) {
		//非分页查询
		//引入pagehelper插件，进行分页查询
		//传入页面以及分页，以及每页大写
		PageHelper.startPage(pn, 5);
		List<Employee> emps = employeeService.getAll();
		PageInfo page = new PageInfo(emps,5);
		model.addAttribute("PageInfo",page);
		
		return "list";
	}
	
	
	/**
	 * 返回json的String形式的字符串
	 * 
	 * 
	 */
	@RequestMapping("/emps_json")
	@ResponseBody
	public Msg getEmpsWithJson(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		PageHelper.startPage(pn, 5);
		List<Employee> emps = employeeService.getAll();
		PageInfo page = new PageInfo(emps,5);
		return Msg.success().add("PageInfo",page);
		
	}
	@RequestMapping(value="/emp",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveEmp(Employee employee) {
		employeeService.saveEmp(employee);
		return Msg.success();
		
	}
	
	@RequestMapping("/checkEmpName")
	@ResponseBody
	public Msg checkEmpName(@RequestParam("empname")String empname) {
		boolean flag = employeeService.checkEmpName(empname);
		if(flag) {
			return Msg.success();
			
		}else {
			return Msg.failure();
			
		}
		
		
	}
	
	
}
