package com.genminno.action;

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

import com.geminno.pojo.Admin;
import com.geminno.pojo.Indent;
import com.genminno.service.IndentService;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class IndentAction implements ModelDriven<Indent>,ServletRequestAware,ServletResponseAware {

	@Autowired
	IndentService indentservice;
	
	HttpServletRequest request;
	HttpServletResponse response;
	
	public IndentService getIndentservice() {
		return indentservice;
	}

	public void setIndentservice(IndentService indentservice) {
		this.indentservice = indentservice;
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

	public Indent getIndent() {
		return indent;
	}

	public void setIndent(Indent indent) {
		this.indent = indent;
	}

	Indent indent;
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response=response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		// TODO Auto-generated method stub
		
	}

	@Override
	public Indent getModel() {
		if(indent==null){
			indent=new Indent();
		}
		return indent;
}
	
	
	
	
	public String queryAllIndents(){
		
		List<Indent> indents=indentservice.queryAllIndents();
		
		Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
		request.put("indents", indents);


		return "listindents";
	}
	
	public void getIndentsById(){
		Integer indentId= (Integer) request.getAttribute("indentId");
		Indent indent=indentservice.getIndentById(indentId);
		/*Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
		request.put("indent", indent);*/
		response.setContentType("text/html;charset=utf-8");
    	Gson gson = new Gson();
    	String json = gson.toJson(indent);
    	System.out.println(indent);
    	
    	try {
			response.getWriter().print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
