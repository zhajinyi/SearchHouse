package com.SearchHouse.action;

import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.HttpException;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Scope("prototype")
public class EmailBindHandler implements ServletRequestAware,ServletResponseAware {
	
	
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
	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
		
	}


	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
	
	
	
	public void sendmail(){
		
		String emailTo=request.getParameter("emailTo");
		String tittle= request.getParameter("tittle");
		String content=request.getParameter("content");
		response.setCharacterEncoding("UTF-8");
		
		try {
				sendMsg(emailTo,tittle,content);
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
	

	
	private void sendMsg(String emailTo,String title,String content) throws HttpException, IOException {
		try{
            String pwd = "zhajinyi19931016";//发件人授权密码
            String mailfrom = "zhajinyi@163.com"; //发信人邮箱
            String wangyiFrom = mailfrom.substring(0, mailfrom.indexOf('@'));//发件人的用户名
            String tu = "163.com"; //发件人邮箱的后缀域名
            
            
            /*String ttitle= "搜趣房邮箱绑定验证码！";//邮件的标题
*/           
            String tcontent = "【搜趣房】尊敬的：" + content + "。祝您生活愉快!";//邮件内容
            
            Properties props=new Properties();//Properties对象
            //host：smtp.(邮箱@以后的)
            props.put("mail.smtp.host","smtp."+tu);//邮箱SMTP服务器地址端口
    
            props.put("mail.smtp.auth","true");//smtp 服务器都需要用户身份认证
    
            Session s=Session.getInstance(props);//根据属性新建一个邮件会话
    
            s.setDebug(true);//可以在控制台看到邮件命令
    
            MimeMessage message=new MimeMessage(s);//创建基于Session的邮箱对象
    
            //给消息对象设置发件人/收件人/主题/发信时间
    
            InternetAddress from=new InternetAddress(mailfrom); //将字符串类型转换成邮箱地址类型
    
            message.setFrom(from);//设置消息from域
    
            InternetAddress to=new InternetAddress(emailTo); //将字符串类型转换成邮箱地址类型
            
            message.setRecipient(Message.RecipientType.TO,to);//设置消息to域
    
            message.setSubject(title);
    
            message.setSentDate(new Date());
    
            message.setContent(tcontent,"text/html;charset=utf-8");//设置消息内容
    
            message.saveChanges();//保存message
    
            Transport transport=s.getTransport("smtp");//连接到smtp服务器
            transport.connect("smtp."+tu, wangyiFrom, pwd); //host，发件人邮箱@之前的，授权码
    
            transport.sendMessage(message,message.getAllRecipients());//发送邮件
   
            transport.close();
        }catch(Exception e){
            e.printStackTrace();
        }
	}


	
	
	
}
