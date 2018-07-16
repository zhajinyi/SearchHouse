package com.SearchHouse.headler;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.mail.Session;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.SearchHouse.pojo.Quality;
import com.SearchHouse.pojo.UserInfo;
import com.SearchHouse.service.UserInfoService;

@Controller
public class UserInfoHeadler {

	@Autowired
	UserInfoService userInfoService;

	public UserInfoService getUserInfoService() {
		return userInfoService;
	}

	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

	@ModelAttribute
	public void getuserInfo(@RequestParam String userId, Map<String, Object> map) {
		if (userId != null) {
			UserInfo userInfo = userInfoService.getUserById(userId);
			map.put("userInfo", userInfo);
		}
	}

	// �޸�����
	@RequestMapping("/updateemail")
	public String updateemail(UserInfo userInfo, HttpServletRequest request) {
		userInfoService.updateUserInfo(userInfo);
		request.getSession().setAttribute("user", userInfo);

		if (request.getServletPath() == "/NewEmail2.jsp") {
			return "UserCenter/UserSet/EmailBind/NewEmail3";
		} else {

			return "UserCenter/UserSet/EmailBind/NewEmail5";

		}

	}

	// �޸��ֻ�����
	@RequestMapping("/updatephone")
	public String updatephone(UserInfo userInfo, HttpServletRequest request) {
		userInfoService.updateUserInfo(userInfo);
		request.getSession().setAttribute("user", userInfo);

		return "UserCenter/UserSet/PhoneBind/bind3";

	}

	@RequestMapping("/addUserInfoInit")
	public String addUserInfoInit() {
		return "register";
	}

	// UserInfo userInfo
	@RequestMapping("/addUserInfo")
	public String addUserInfo(@RequestParam(value = "userId", required = false) String userId, String phoneNumber,
			String userMail, String userPassword, HttpServletRequest request) {
		UserInfo user = userInfoService.getUserById(userId);

		if (user == null) {

			user = new UserInfo(userId, phoneNumber, userMail, userPassword);
			userInfoService.addUserInfo(user);

			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			return "forward:/index";
		} else {

			return "register";
		}
	}

	@RequestMapping("/deleteUserInfo")
	public String deleteUserInfo(String userId) {
		userInfoService.deleteUserInfo(userId);
		return "redirect:/userList";
	}

	@RequestMapping("/updateUserInfoInit")
	public String updateUserInfoInit(String userId, Map<String, Object> map) {
		UserInfo user = userInfoService.getUserById(userId);
		map.put("user", user);
		return "updateUser";
	}

	@RequestMapping("/updateUserInfo")
	public String updateUserInfo(UserInfo userInfo, HttpServletRequest request) {

		userInfoService.updateUserInfo(userInfo);
		request.getSession().setAttribute("user", userInfo);
		return "UserCenter/UserSet/UserData";
	}

	// ZJY,�޸����룻
	@RequestMapping("/updatePwd")
	public String updatePwd(UserInfo userInfo) {
		userInfoService.updatepwd(userInfo);
		return "/UserCenter/UserSet/PwdSet/PwdSetResult";
	}

	@RequestMapping("/getUname")
	public void getUserById(HttpServletRequest request, HttpServletResponse response) {
		String userId = request.getParameter("userId");
		UserInfo user = userInfoService.getUserById(userId);
		request.getSession().setAttribute("user", user);
		if (user == null) {
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

	// ����δ��¼�Ķ���Ҫ�Ƚ����� ��url�ŵ�session��
	@RequestMapping("/getUrl")
	public String getUrl(Integer userId, HttpServletRequest request) {
		Enumeration<String> biaoti = request.getHeaders("Referer");
		String url;
		if (biaoti.hasMoreElements()) {
			url = (String) biaoti.nextElement();
		} else {
			url = "ֱ�ӷ���";
		}
		HttpSession session = request.getSession();
		session.setAttribute("url", url);
		return "login";

	}

	// ȡ��session���еķ��� �ڵ�¼���ض���url
	@RequestMapping("/getUserInfo")
	public void getUserById(String userId, String userPassword, HttpSession session, HttpServletResponse response) {

		UserInfo user = userInfoService.getUserById(userId);
		if (user != null && (userPassword).equals(user.getUserPassword())) {
			session.setAttribute("user", user);
			String url = (String) session.getAttribute("url");
			try {
				response.sendRedirect(url);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				response.sendRedirect("/SearchHouse/page/registerError.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// return "registerError";
		}
	}

	@RequestMapping("/userList")
	public String getAllUsers(Map<String, Object> map) {

		List<UserInfo> users = userInfoService.getAllUsers();

		map.put("users", users);
		return "userList";
	}

	@RequestMapping("/singlefileupload")
	public String singlefileupload(@RequestParam("faceLegalFile") CommonsMultipartFile file,
			@RequestParam("userId") String userId, HttpServletRequest request, ModelMap model) {

		// ���ԭʼ�ļ���
		String fileName = file.getOriginalFilename();

		// ���ļ���
		String newFileName = UUID.randomUUID() + fileName;

		// �����Ŀ��·��
		ServletContext sc = request.getSession().getServletContext();
		// �ϴ�λ��

		System.out.println(sc);
		System.out.println(sc.getContext("/page/HeadImg"));
		String path = sc.getRealPath("/") + "img/"; // �趨�ļ������Ŀ¼;
		File f = new File(path);
		if (!f.exists())
			f.mkdirs();
		if (!file.isEmpty()) {
			try {
				FileOutputStream fos = new FileOutputStream(new File(path, newFileName));
				InputStream in = file.getInputStream();
				int b = 0;
				while ((b = in.read()) != -1) {
					fos.write(b);
				}
				fos.close();
				in.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		UserInfo userInfo = userInfoService.getUserById(userId);

		userInfo.setUserPhoto(newFileName);
		userInfoService.updateUserInfo(userInfo);
		UserInfo user = userInfoService.getUserById(userId);
		// �����ļ���ַ������JSPҳ�����
		model.addAttribute("fileUrl", path + newFileName);
		request.getSession().setAttribute("user", user);
		return "/UserCenter/UserSet/UserImg/LoacationImg";

	}

	@RequestMapping("/updatephoto")
	public String updatephoto(UserInfo userInfo, HttpServletRequest request) {
		String fName = userInfo.getUserPhoto();
		String fileName = fName.substring(fName.lastIndexOf("/") + 1);
		userInfo.setUserPhoto(fileName);
		userInfoService.updateUserInfo(userInfo);
		request.getSession().setAttribute("user", userInfo);
		return "/UserCenter/UserSet/UserImg/SystemImg";
	}

	@RequestMapping("/closeSession")
	public String closeSession(HttpSession session, @RequestParam(value = "userId", required = false) String userId) {

		UserInfo user = userInfoService.getUserById(userId);
		user = null;
		session.setAttribute("user", user);

		return "login";
	}
	
	
	

	//�����֤��ʱ���Ƚ���ķ���  ���жϴ����Ƿ��Ѿ���֤     quality 1����������    2������Ϣ����qualityRating  ���    ����   ����  �̻�
		@RequestMapping("/initial")
		public String initial(HttpSession session){
			//����useId����
			UserInfo user = (UserInfo) session.getAttribute("user");
			if(user!=null){
				String userId = user.getUserId();
				Integer qualityId= userInfoService.findQulaity(userId);
				String qualityRa =userInfoService.findPerson(userId);
				
				//qualityid==null Ϊ��ʱ   qualityta һ��Ϊ��
				//qualityid!=null ����ʱ   qualityta==null Ϊ��     ������֤
				//qualityid!=null ����ʱ   qualityta!=null ��Ϊ��     ����֤
				if(qualityId!=null&&qualityRa!=null){
					//���������֤��id ���û���ע��  ��֤����ʾ��ע��  ��qualityId�浽����
					session.setAttribute("qualityId", qualityId);
					session.setAttribute("qualityRa",qualityRa );
					return "UserCenter/UserSet/Idenfication";
				}else if(qualityId!=null&&qualityRa==null){	
					session.setAttribute("qualityId", qualityId);
					return "UserCenter/UserSet/Idenfication";
				}else{
					//����ֱ����ת��ҳ��
					return "UserCenter/UserSet/Idenfication";
				}	
			}else{
				return "forward:/getUrl";
			}	
		}
		

		
		//�û���֤  ���� �����̻�  ����֤���в���һ������
		@RequestMapping("/quality")
		public String quality(Quality quality,HttpSession session){
			
			UserInfo user = (UserInfo) session.getAttribute("user");
			String userId = user.getUserId();//ȡ���û�ID
			quality.setUserInfo(user);
			Integer num=userInfoService.findQulaityNum(userId);//�����֤������û�д˼�¼
			if(num>0){
				System.out.println("���ύ���벻Ҫ�ظ�ע��");
				
				return "back3";//���ύ��֤ 
			}else{
				userInfoService.addQuality(quality);
				return "UserCenter/UserSet/Idenfication/Personal";
			}	
		}
	
	
	
}
