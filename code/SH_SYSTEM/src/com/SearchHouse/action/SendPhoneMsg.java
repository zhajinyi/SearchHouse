package com.SearchHouse.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.SearchHouse.pojo.Quality;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class SendPhoneMsg implements ServletRequestAware,ServletResponseAware {

	@Autowired
	HttpServletRequest request;
	HttpServletResponse response;
	
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
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
		
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response=response;
	}
	
	
	
	public void sendphone(){
		String phone=request.getParameter("phoneNumber");
		
		String message=request.getParameter("message");
		
		System.out.println(phone+message);
		response.setCharacterEncoding("UTF-8");
		
		try {
			sendMsg(phone,message);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				response.flushBuffer();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	private void sendMsg(String phone,String message) throws HttpException, IOException {  
		System.out.println(message);
        HttpClient client = new HttpClient(); 
        //client.getParams().setContentCharset("UTF-8");
        PostMethod post = new PostMethod("http://106.ihuyi.com/webservice/sms.php?method=Submit");  
        post.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");//在头文件中设置转码  
        String content = new String("尊敬的" + message + "。祝您生活愉快！");
        System.out.println(content);
        NameValuePair[] data ={   
        		new NameValuePair("account", "C63044414"),
        		new NameValuePair("password", "454bafc1dc958d5ac0ec9c2b227ef7e4"),
                new NameValuePair("mobile",phone),// 手机号码    
                new NameValuePair("content",content)};// 短信内容    
        post.setRequestBody(data); 
        //http://106.ihuyi.com/webservice/sms.php?method=Submit&account=用户名&password=APIKEY&mobile=手机号码&content=您的验证码是：1234。请不要把验证码泄露给其他人。
        
        //提交
        client.executeMethod(post);  
        //获取返回信息
        int statusCode = post.getStatusCode();  
        System.out.println("statusCode:"+statusCode);  
        String result = new String(post.getResponseBodyAsString().getBytes("gb2312"));  
        System.out.println(result); //打印返回消息状态  
        post.releaseConnection(); 
    }

}
