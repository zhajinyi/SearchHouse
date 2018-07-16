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
            String pwd = "zhajinyi19931016";//��������Ȩ����
            String mailfrom = "zhajinyi@163.com"; //����������
            String wangyiFrom = mailfrom.substring(0, mailfrom.indexOf('@'));//�����˵��û���
            String tu = "163.com"; //����������ĺ�׺����
            
            
            /*String ttitle= "��Ȥ���������֤�룡";//�ʼ��ı���
*/           
            String tcontent = "����Ȥ�����𾴵ģ�" + content + "��ף���������!";//�ʼ�����
            
            Properties props=new Properties();//Properties����
            //host��smtp.(����@�Ժ��)
            props.put("mail.smtp.host","smtp."+tu);//����SMTP��������ַ�˿�
    
            props.put("mail.smtp.auth","true");//smtp ����������Ҫ�û������֤
    
            Session s=Session.getInstance(props);//���������½�һ���ʼ��Ự
    
            s.setDebug(true);//�����ڿ���̨�����ʼ�����
    
            MimeMessage message=new MimeMessage(s);//��������Session���������
    
            //����Ϣ�������÷�����/�ռ���/����/����ʱ��
    
            InternetAddress from=new InternetAddress(mailfrom); //���ַ�������ת���������ַ����
    
            message.setFrom(from);//������Ϣfrom��
    
            InternetAddress to=new InternetAddress(emailTo); //���ַ�������ת���������ַ����
            
            message.setRecipient(Message.RecipientType.TO,to);//������Ϣto��
    
            message.setSubject(title);
    
            message.setSentDate(new Date());
    
            message.setContent(tcontent,"text/html;charset=utf-8");//������Ϣ����
    
            message.saveChanges();//����message
    
            Transport transport=s.getTransport("smtp");//���ӵ�smtp������
            transport.connect("smtp."+tu, wangyiFrom, pwd); //host������������@֮ǰ�ģ���Ȩ��
    
            transport.sendMessage(message,message.getAllRecipients());//�����ʼ�
   
            transport.close();
        }catch(Exception e){
            e.printStackTrace();
        }
	}


	
	
	
}
