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

	// 修改邮箱
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

	// 修改手机号码
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

	// ZJY,修改密码；
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

	// 所有未登录的都需要先进方法 将url放到session中
	@RequestMapping("/getUrl")
	public String getUrl(Integer userId, HttpServletRequest request) {
		Enumeration<String> biaoti = request.getHeaders("Referer");
		String url;
		if (biaoti.hasMoreElements()) {
			url = (String) biaoti.nextElement();
		} else {
			url = "直接访问";
		}
		HttpSession session = request.getSession();
		session.setAttribute("url", url);
		return "login";

	}

	// 取出session域中的方法 在登录后重定向到url
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

		// 获得原始文件名
		String fileName = file.getOriginalFilename();

		// 新文件名
		String newFileName = UUID.randomUUID() + fileName;

		// 获得项目的路径
		ServletContext sc = request.getSession().getServletContext();
		// 上传位置

		System.out.println(sc);
		System.out.println(sc.getContext("/page/HeadImg"));
		String path = sc.getRealPath("/") + "img/"; // 设定文件保存的目录;
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
		// 保存文件地址，用于JSP页面回显
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
	
	
	

	//点击认证的时候先进入的方法  来判断此人是否已经认证     quality 1表中有数据    2个人信息表中qualityRating  变成    个人   或者  商户
		@RequestMapping("/initial")
		public String initial(HttpSession session){
			//根据useId查找
			UserInfo user = (UserInfo) session.getAttribute("user");
			if(user!=null){
				String userId = user.getUserId();
				Integer qualityId= userInfoService.findQulaity(userId);
				String qualityRa =userInfoService.findPerson(userId);
				
				//qualityid==null 为空时   qualityta 一定为空
				//qualityid!=null 不空时   qualityta==null 为空     正在认证
				//qualityid!=null 不空时   qualityta!=null 不为空     已认证
				if(qualityId!=null&&qualityRa!=null){
					//如果存在认证的id 该用户已注册  认证中显示已注册  将qualityId存到域中
					session.setAttribute("qualityId", qualityId);
					session.setAttribute("qualityRa",qualityRa );
					return "UserCenter/UserSet/Idenfication";
				}else if(qualityId!=null&&qualityRa==null){	
					session.setAttribute("qualityId", qualityId);
					return "UserCenter/UserSet/Idenfication";
				}else{
					//否则直接跳转到页面
					return "UserCenter/UserSet/Idenfication";
				}	
			}else{
				return "forward:/getUrl";
			}	
		}
		

		
		//用户认证  个人 或者商户  向认证表中插入一条数据
		@RequestMapping("/quality")
		public String quality(Quality quality,HttpSession session){
			
			UserInfo user = (UserInfo) session.getAttribute("user");
			String userId = user.getUserId();//取出用户ID
			quality.setUserInfo(user);
			Integer num=userInfoService.findQulaityNum(userId);//查出认证表中有没有此记录
			if(num>0){
				System.out.println("已提交，请不要重复注册");
				
				return "back3";//已提交认证 
			}else{
				userInfoService.addQuality(quality);
				return "UserCenter/UserSet/Idenfication/Personal";
			}	
		}
	
	
	
}
