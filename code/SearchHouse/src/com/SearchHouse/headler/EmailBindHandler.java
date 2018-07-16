package com.SearchHouse.headler;

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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.SearchHouse.pojo.UserInfo;

@Controller
public class EmailBindHandler {
	@RequestMapping(value = "/sendmail", method = RequestMethod.POST)
	public void sendmail(UserInfo user, Map<String, Object> map, HttpServletRequest request,
			HttpServletResponse response) {
		String emailTo = request.getParameter("emailTo");
		response.setCharacterEncoding("UTF-8");

		String code = getCode(request);

		try {
			sendMsg(emailTo, code);
		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				response.flushBuffer();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@RequestMapping(value = "/mailcode", method = RequestMethod.POST)
	public void mailcode(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("emailcode");
		response.setCharacterEncoding("UTF-8");
		if (request.getSession().getAttribute("code").equals(code)) {
			try {
				response.getWriter().print("1");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				response.getWriter().print("2");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	private String getCode(HttpServletRequest request) {

		String code = "";
		String ranstr = "0_1_2_3_4_5_6_7_8_9";
		String[] usestr = ranstr.split("_");
		for (int i = 0; i < 6; i++) {
			int num = (int) (Math.random() * 10);
			code += usestr[num];
		}
		request.getSession().setAttribute("code", code);
		return code;
	}

	private void sendMsg(String emailTo, String code) throws HttpException, IOException {
		try {
			String pwd = "zhajinyi19931016";// ��������Ȩ����
			String mailfrom = "zhajinyi@163.com"; // ����������
			String wangyiFrom = mailfrom.substring(0, mailfrom.indexOf('@'));// �����˵��û���
			String tu = "163.com"; // ����������ĺ�׺����

			String ttitle = "��Ȥ���������֤�룡";// �ʼ��ı���

			String tcontent = "����Ȥ����������֤���ǣ�" + code + "���벻Ҫ����֤��й¶�������ˡ�";// �ʼ�����

			Properties props = new Properties();// Properties����
			// host��smtp.(����@�Ժ��)
			props.put("mail.smtp.host", "smtp." + tu);// ����SMTP��������ַ�˿�

			props.put("mail.smtp.auth", "true");// smtp ����������Ҫ�û������֤

			Session s = Session.getInstance(props);// ���������½�һ���ʼ��Ự

			s.setDebug(true);// �����ڿ���̨�����ʼ�����

			MimeMessage message = new MimeMessage(s);// ��������Session���������

			// ����Ϣ�������÷�����/�ռ���/����/����ʱ��

			InternetAddress from = new InternetAddress(mailfrom); // ���ַ�������ת���������ַ����

			message.setFrom(from);// ������Ϣfrom��

			InternetAddress to = new InternetAddress(emailTo); // ���ַ�������ת���������ַ����

			message.setRecipient(Message.RecipientType.TO, to);// ������Ϣto��

			message.setSubject(ttitle);

			message.setSentDate(new Date());

			message.setContent(tcontent, "text/html;charset=utf-8");// ������Ϣ����

			message.saveChanges();// ����message

			Transport transport = s.getTransport("smtp");// ���ӵ�smtp������
			transport.connect("smtp." + tu, wangyiFrom, pwd); // host������������@֮ǰ�ģ���Ȩ��

			transport.sendMessage(message, message.getAllRecipients());// �����ʼ�

			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
