package com.SearchHouse.action;

import java.io.IOException;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.SearchHouse.pojo.User1;
@Controller
public class SendMessHeadler {
	@RequestMapping(value = "/sendPhone", method = RequestMethod.POST)
	public void sendPhone(User1 user,Map<String,Object> map,HttpServletRequest request,HttpServletResponse response){
		//从jsp页面获取注册的手机号�?
		String phone=request.getParameter("phoneNumber");
		 //设置响应格式UTF8
	        response.setCharacterEncoding("UTF-8");   
	        //获取验证�?  
	        String code = getCode(request);  
	        System.out.println(code);
	        //发�?�短�?  
	        try {
				sendMsg(phone,code);
		        
			} catch (HttpException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				//Response对象之Flush方法，立即发送缓冲区中的输出�?
		        try {
					response.flushBuffer();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
	}
	private void sendMsg(String phone,String code) throws HttpException, IOException {  
        HttpClient client = new HttpClient(); 
        //client.getParams().setContentCharset("UTF-8");
        PostMethod post = new PostMethod("http://106.ihuyi.com/webservice/sms.php?method=Submit");  
        post.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");//在头文件中设置转�?  
        String content = new String("您的验证码是�?" + code + "。请不要把验证码泄露给其他人�?");
        NameValuePair[] data ={   
        		new NameValuePair("account", "C63044414"),
        		new NameValuePair("password", "454bafc1dc958d5ac0ec9c2b227ef7e4"),
                new NameValuePair("mobile",phone),// 手机号码    
                new NameValuePair("content",content)};// 短信内容    
        post.setRequestBody(data); 
        //http://106.ihuyi.com/webservice/sms.php?method=Submit&account=用户�?&password=APIKEY&mobile=手机号码&content=您的验证码是�?1234。请不要把验证码泄露给其他人�?
        
        //提交
        client.executeMethod(post);  
        //获取返回信息
        int statusCode = post.getStatusCode();  
        System.out.println("statusCode:"+statusCode);  
        String result = new String(post.getResponseBodyAsString().getBytes("gb2312"));  
        System.out.println(result); //打印返回消息状�??  
        post.releaseConnection(); 
    }
	/*
	 * 生成验证�?
	 */
	private String getCode(HttpServletRequest request) {  
        Random rand =new Random();  
        String code = "";  
        for(int i=0;i<4;i++) {  
            code += rand.nextInt(10);  
        }  
        request.getSession().setAttribute("code",code);  
        return code;  
    }
	
	@RequestMapping(value = "/code", method = RequestMethod.POST)
	public void code(HttpServletRequest request,HttpServletResponse response){
		String code=request.getParameter("code");
		response.setCharacterEncoding("UTF-8");   
        if(request.getSession().getAttribute("code").equals(code)){  
        	try {
				response.getWriter().print("1");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }else {  
        	try {
				response.getWriter().print("2");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
