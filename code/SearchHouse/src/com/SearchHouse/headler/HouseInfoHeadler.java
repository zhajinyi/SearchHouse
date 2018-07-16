package com.gaobo.headler;

import java.io.File;
import java.io.IOException;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gaobo.pojo.BedRoom;
import com.gaobo.pojo.Fitment;
import com.gaobo.pojo.UserInfo;
import com.gaobo.pojo.House;
import com.gaobo.pojo.HouseSetType;
import com.gaobo.pojo.Limit;
import com.gaobo.pojo.Pay;
import com.gaobo.pojo.ShaiXuan;
import com.gaobo.pojo.Page;
import com.gaobo.service.BedroomService;
import com.gaobo.service.FitmentService;
import com.gaobo.service.House2Service;
import com.gaobo.service.HouseInfoService;
import com.gaobo.service.HouseLimitService;
import com.gaobo.service.HouseSetTypeService;
import com.gaobo.service.PayService;
import com.gaobo.service.UserInfoService;
import com.google.gson.Gson;

@Controller
public class HouseInfoHeadler {
	@Autowired
	HouseInfoService houseInfoService;
	@Autowired
	House2Service house2Service;
	@Autowired
	UserInfoService userInfoService;
	@Autowired
	HouseLimitService houseLimitService;
	@Autowired
	FitmentService fitmentService;
	@Autowired
	BedroomService bedroomService;
	@Autowired
	HouseSetTypeService houseSetTypeService;
	@Autowired
	PayService payService;

	public PayService getPayService() {
		return payService;
	}

	public void setPayService(PayService payService) {
		this.payService = payService;
	}

	public HouseSetTypeService getHouseSetTypeService() {
		return houseSetTypeService;
	}

	public void setHouseSetTypeService(HouseSetTypeService houseSetTypeService) {
		this.houseSetTypeService = houseSetTypeService;
	}

	public BedroomService getBedroomService() {
		return bedroomService;
	}

	public void setBedroomService(BedroomService bedroomService) {
		this.bedroomService = bedroomService;
	}

	public HouseLimitService getHouseLimitService() {
		return houseLimitService;
	}

	public void setHouseLimitService(HouseLimitService houseLimitService) {
		this.houseLimitService = houseLimitService;
	}

	public HouseInfoService getHouseInfoService() {
		return houseInfoService;
	}

	public void setHouseInfoService(HouseInfoService houseInfoService) {
		this.houseInfoService = houseInfoService;
	}

	public UserInfoService getUserInfoService() {
		return userInfoService;
	}

	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

	@RequestMapping("/addHouseInit")
	public String addInit(Map<String, Object> map) {
		List<Limit> limits = houseLimitService.getAllLimit();
		List<Fitment> fitments = fitmentService.getAllFitment();
		List<BedRoom> bedrooms = bedroomService.getAllBedroom();
		List<HouseSetType> hSetType = houseSetTypeService.getAllHouseType();
		List<Pay> pays = payService.getAllPays();
		map.put("limits", limits);
		map.put("fitments", fitments);
		map.put("bedrooms", bedrooms);
		map.put("hSetType", hSetType);
		map.put("pays", pays);
		return "FaBuXX";
	}

	@RequestMapping(value = "/addHouse", method = RequestMethod.POST)
	public String upload(House house, String userId, MultipartFile file, @RequestParam("files") MultipartFile[] files,
			HttpServletRequest request, HttpServletResponse response) throws IOException {

		Integer fitmentId = Integer.parseInt(request.getParameter("fitmentId"));
		Integer bedroomIdFk = Integer.parseInt(request.getParameter("bedroomIdFk"));
		Integer limitIdFk = Integer.parseInt(request.getParameter("limitIdFk"));
		Integer houseSetTypeId = Integer.parseInt(request.getParameter("houseSetTypeId"));
		Integer payId = Integer.parseInt(request.getParameter("payId"));

		Fitment fitment = fitmentService.getFitmentById(fitmentId);
		BedRoom bedRoom = bedroomService.getBedRoomById(bedroomIdFk);
		Limit limit = houseLimitService.getLimitById(limitIdFk);
		HouseSetType houseSetType = houseSetTypeService.getHouseSetTypeById(houseSetTypeId);
		Pay pay = payService.getPayById(payId);

		List<String> photos = house.getPhotos();
		UserInfo userInfo = userInfoService.getUserById(userId);
		String path = "C:/Users/Hawk/Desktop/妞ゅ湱娲伴弬鍥︽/Java EE/SearchHouse/WebContent/img/";
		String fileName = file.getOriginalFilename();
		house.setPhoto(fileName);
		house.setUserInfo(userInfo);
		house.setBedRoom(bedRoom);
		house.setFitment(fitment);
		house.setHouseSetType(houseSetType);
		house.setLimit(limit);
		house.setPay(pay);
		File dir = new File(path, fileName);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		// MultipartFile閿熺殕杈炬嫹閿熶茎鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷�
		file.transferTo(dir);
		if (files != null && files.length > 0) {
			// 寰敓鏂ゆ嫹閿熸枻鎷峰彇file閿熸枻鎷烽敓鏂ゆ嫹閿熷彨纰夋嫹閿熶茎纭锋嫹
			for (int i = 0; i < files.length; i++) {
				MultipartFile f = files[i];
				// 閿熷彨璁规嫹閿熶茎纭锋嫹閿熻鍑ゆ嫹涓洪敓鏂ゆ嫹
				if (!f.isEmpty()) {
					String fPath = "C:/Users/Hawk/Desktop/项目文件/Java EE/SearchHouse/WebContent/img/";
					// 杞敓鏂ゆ嫹閿熶茎纭锋嫹
					String fName = f.getOriginalFilename();
					photos.add(fName);
					File dirs = new File(fPath, fName);
					if (!dirs.exists()) {
						dirs.mkdirs();
					}
					f.transferTo(dirs);
				}
			}
			houseInfoService.addHouse(house);
		}
		return "/UserCenter/UserInfo/UserCenter";
	}

	@RequestMapping("/deleteHouse")
	public String deleteHouse(int houseId) {
		houseInfoService.deleteHouse(houseId);
		return "success";
	}

	public String updateInit(int houseId) {
		return "success";
	}

	public String updateHouse() {
		return "success";
	}

	@RequestMapping("/HouseList")
	public String getHouseById(Map<String, Object> map) {
		List<House> houses = houseInfoService.getAllHouses();
		map.put("houses", houses);
		return "UserCenter/UserInfo/Release/NewInfo";
	}

	@RequestMapping("/getHouseById") // jiang map gai cheng httpsession yong
										// session cun fang house
	public String getHouseById(Map<String, Object> map, HttpSession session, Integer houseId) {
		House houses = houseInfoService.getHouseById(houseId);

		String userId = houses.getUserInfo().getUserId();
		UserInfo user = userInfoService.getUserById(userId);
		// gang gang gai de
		session.setAttribute("house", houses);
		map.put("userf", user);
		// map.put("houses", houses);
		return "single";
	}

	// 閿熸枻鎷烽敓鏂ゆ嫹閿熺煫浼欐嫹ID閿熸彮鍑ゆ嫹閿熸帴锝忔嫹
	@RequestMapping("/getHouseByUserID1")
	public String getHouseByUserID1(Map<String, Object> map, String userId) {

		List<House> houses = houseInfoService.getHouseByUserID(userId);
		map.put("houses", houses);

		return "/UserCenter/UserInfo/Release/ReleasedHouse";
	}

	@RequestMapping("/getHouseByUserID2")
	public String getHouseByUserID2(Map<String, Object> map, String userId) {

		List<House> houses = houseInfoService.getHouseByUserID(userId);
		map.put("houses", houses);

		return "/UserCenter/UserInfo/Release/CheckedInfo";
	}

	@RequestMapping("/getHouseByUserID3")
	public String getHouseByUserID3(Map<String, Object> map, String userId) {

		List<House> houses = houseInfoService.getHouseByUserID(userId);
		map.put("houses", houses);

		return "/UserCenter/UserInfo/Release/CheckedFalse";
	}

	@RequestMapping("/getHouseByUserID4")
	public String getHouseByUserID4(Map<String, Object> map, String userId) {

		List<House> houses = houseInfoService.getHouseByUserID(userId);
		map.put("houses", houses);

		return "/UserCenter/UserInfo/Release/DatedInfo";
	}

	// 濠碘槅鍨界换婵嬪极閹捐妫橀柕鍫濇椤忓爼姊虹捄銊ユ瀾闁哄顭烽獮蹇涙偪椤栵絽娈�
	// 闂備浇娉曢崰鎰亹椤旀儳鏋堝璺侯儏椤忓爼姊虹捄銊ユ瀾闁哄顭烽獮蹇旑槹鎼存稐绮�
	// 闂備浇娉曢崰鎰亹椤旂偓瀚氱憸搴ｏ拷姘秺閺屻劑鎮㈤崨濠勪紕闂佺懓鍤栭幏锟�
	// 闂備浇娉曢崰鎰板几婵犳艾绠柣鎴ｅГ閺呭摜绱掗弮鎴濆绩妞ゆ洘绮撻獮蹇涙倻閼恒儲娅㈤梺鍝勫�堕崐鏍拷姘秺閺屻劑鎮㈤崨濠勪紕闂佺懓鍤栭幏锟�
	// 闂備浇娉曢崰鎰板几婵犳艾绠瀣缁绢垶姊虹捄銊ユ瀾闁哄顭烽獮蹇涙倻閼恒儲娅㈤梺鍝勫�堕崐鏍拷姘秺閺屻劑鎮㈢粙鍨槻缂佺偓婢橀ˇ鎵拷姘秺閺屻劑鎮㈤崨濠勪紕闂佸綊顥撻崗姗�寮幘璇茬煑妞ゆ劑鍨瑰▓鈺呮煙閻戣姤鏁辩紒顭掓嫹
	@RequestMapping("/getHouseByKey")
	public String getHouseByKey(String keyName, Map<String, Object> map, Integer pageNo) {
		// 闂備浇娉曢崰鎰板春閸涱垱鍏滈梺鍨儏椤忓爼姊虹捄銊ユ灆妞ゃ垺绮庨幏鐘侯槼閻庢俺顫夌粙澶娒洪鍛闂佸搫鍊堕崐鏍拷姘炬嫹
		if (keyName != null) {
			List<House> houses1 = houseInfoService.getHouseByKeyAll(keyName);
			Integer number = (pageNo - 1) * 3;
			List<House> houses = houseInfoService.getHouseByKey(keyName, number);
			// 闂備浇娉曢崰鎰板几婵犳艾绠柣鎴ｅГ閺呮悂鏌￠崒妯猴拷鏍拷姘秺閺屻劑鎮㈤崨濠勪紕闂佸湱鏌夊〒鍦嫻閻斿吋鐓ラ柣鏂挎啞閻忣噣鏌熼悜鑺ユ暠婵＄儑鎷�
			if (houses != null) {
				Integer totalCount = houses1.size();
				Integer totalPage;
				if (totalCount % 8 == 0) {
					totalPage = totalCount / 8;
				} else {
					totalPage = (totalCount / 8 + 1); // 闂備浇娉曢崰鎰板几婵犳艾绠柣鎴濐潟閿熻棄顦甸弻銊╂偄閸涘﹦浼勯梺鐟板殩閹凤拷
														// totalPage
				}
				Page page = new Page(totalCount, totalPage, pageNo, houses);
				map.put("houses", houses);
				map.put("page", page);
				return "housebykey";
				// 婵炴垶鎸诲浠嬪极閹捐妫橀柕鍫濇椤忓爼鏌￠崘鎸庡
				// 闂備浇娉曢崰鎰板几婵犳艾绠柣銈庡灡缁侇噣姊虹捄銊ユ瀾闁哄顭烽獮蹇涙倻閼恒儲娅㈤梺鍝勫�堕崐鏍拷姘秺閺屻劑鎮㈤崨濠勪紕闂佸綊顥撻崗姗�寮幘璇茬煑妞ゆ劧绲介弫楣冩煙閸戙倖瀚�
			} else {
				return "forward:/houselist";
			}
			// 婵炴垶鎸诲浠嬪极閹捐妫橀柕鍫濇椤忓爼鏌￠崘鎸庡
			// 闂備浇娉曢崰鎰板几婵犳艾绠柣銈庡灡缁侇噣姊虹捄銊ユ瀾闁哄顭烽獮蹇涙倻閼恒儲娅㈤梺鍝勫�堕崐鏍拷姘秺閺屻劑鎮㈤崨濠勪紕闂佸綊顥撻崗姗�寮幘璇茬煑妞ゆ劧绲介弫楣冩煙閸戙倖瀚�
		} else {
			return "forward:/houselist";
		}
	}

	// 闂佺绻堥崝鎴﹀极閹捐妫橀柕鍫濇椤忓爼姊虹捄銊ユ瀾闁哄顭烽獮蹇涙煥鐎ｎ剛鍩�
	// 闂備浇娉曢崰鎰板几婵犳艾绠�瑰嫭婢樼徊鍧楁⒑鐠恒劌鏋戦柡瀣煼楠炲繘鎮滈懞銉︽闂佸憡鐟崑鍡涖�傞锟介獮蹇涙倻閼恒儲娅㈤梺鍝勫�堕崐鏍拷姘秺瀵剟顢涢悙瀛樻闂佸搫鍊堕崐鏍拷姘愁潐閹便劑宕卞☉娆愭闂佹眹鍔屽Λ鎾箯閿燂拷
	// 闂備緡鍋呭畝鎼佸极閹捐妫橀柕鍫濇椤忓爼姊虹捄銊ユ瀾闁哄顭烽獮蹇涙倻婵劧鎷锋径濞︽帟绠涘☉鏍垫嫹閿燂拷10闂備浇娉曢崰鎰板几婵犳艾绠柨鐕傛嫹
	// 闂備浇娉曢崰鎰板几婵犳艾绠柣鎴ｅГ閺呮悂鏌涘▎妯轰簻闁搞倖鐗犻獮蹇涙煥鐎ｎ剛鍩嶉梻浣芥硶閸犲秹鎳犳惔銊ョ闁靛牆妫楅璺侯渻閵堝繑瀚�
	@RequestMapping("/houseall")
	public String getAllHouses(Map<String, Object> map, Integer pageNo) {
		List<House> houses1 = houseInfoService.getAllHouses();
		Integer number = (pageNo - 1) * 8;
		List<House> houses = houseInfoService.getHouseByNum(number);

		Integer totalCount = houses1.size();// 闂備浇娉曢崰鎰板几婵犳艾绠柣鎴ｅГ閺呮悂鏌￠崒妯猴拷鏍拷姘秺閺屻劑鎮㈤崨濠勪紕闂佺懓鍤栭幏锟�
											// totalCount
		Integer totalPage;
		if (totalCount % 8 == 0) {
			totalPage = totalCount / 8;
		} else {
			totalPage = (totalCount / 8 + 1); // 闂備浇娉曢崰鎰板几婵犳艾绠柣鎴濐潟閿熻棄顦甸弻銊╂偄閸涘﹦浼勯梺鐟板殩閹凤拷
												// totalPage
		}
		Page page = new Page(totalCount, totalPage, pageNo, houses);
		map.put("houses", houses);
		map.put("page", page);
		return "houseall";
	}

	// 闂佸憡绻�缁舵岸寮幘缁樺亼闁挎稑瀚鐔兼煙瀹勬澘妲婚柣锔兼嫹
	// 闂備浇娉曢崰鎰板几婵犳艾绠柣鎴ｅГ閺呮悂鏌熼悷鏉挎Щ闁搞倖鐗犻獮蹇涙倻閼恒儲娅㈤梺鍝勫�堕崐鏍拷姘秺閺屻劑鎮㈤崨濠勪紕闂佸綊顥撻崗姗�寮幘璇叉闁靛牆妫楅鍓佺磼濞戞瑧娲撮柨鐔绘椤︾敻寮幘璇叉闁靛牆妫楅鍫曟⒑鐠恒劌鏋戦柡瀣煼楠炲繘鏁撻敓锟�
	// 闂佸憡绻�缁舵岸寮幘缁樺亼闁挎稑瀚鐔兼煙瀹勬澘妲婚柣锔诲墴閺屻劑鎮㈤幆鏉款嚋闂佸憡鍨崐鏍拷姘愁潐閵囧嫰鏁撻敓锟�
	@RequestMapping("/houseType")
	public String getHouseByType(Map<String, Object> map, Integer pageNo) {
		List<House> houses1 = houseInfoService.getHouseByTypeAll();
		Integer number = (pageNo - 1) * 8;
		List<House> houses = houseInfoService.getHouseByType(number);

		Integer totalCount = houses1.size();// 闂備浇娉曢崰鎰板几婵犳艾绠柣鎴ｅГ閺呮悂鏌￠崒妯猴拷鏍拷姘秺閺屻劑鎮㈤崨濠勪紕闂佺懓鍤栭幏锟�
											// totalCount
		Integer totalPage;
		if (totalCount % 8 == 0) {
			totalPage = totalCount / 8;
		} else {
			totalPage = (totalCount / 8 + 1); // 闂備浇娉曢崰鎰板几婵犳艾绠柣鎴濐潟閿熻棄顦甸弻銊╂偄閸涘﹦浼勯梺鐟板殩閹凤拷
												// totalPage
		}
		Page page = new Page(totalCount, totalPage, pageNo, houses);

		map.put("houses", houses);
		map.put("page", page);
		return "housetype";
	}

	@RequestMapping("/houselist1")
	public String getAllHousesMap(Map<String, Object> map) {
		List<House> houses = houseInfoService.getAllHouses();
		map.put("houses", houses);
		return "FindMap";
	}

	// 濠碘槅鍨界换婵嬪极閹捐妫橀柕鍫濇椤忓爼姊虹捄銊ユ瀾闁哄顭烽獮蹇涙偪椤栵絽娈�
	@RequestMapping(value = "/getHouseByKey1")
	public void getHouseByKey1(@Param(value = "keyName") String keyName, HttpServletResponse response) {

		List<House> houses = house2Service.getHouseByKey1(keyName);

		Gson gson = new Gson();
		String json = gson.toJson(houses);
		try {
			response.getWriter().print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/getHouseById1")
	public void getHouseById1(HttpServletResponse response, Integer houseId) {
		House house = house2Service.getHouseById(houseId);
		Gson gson = new Gson();
		String json = gson.toJson(house);
		try {
			response.getWriter().print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 婵＄偑鍊楅弫濠氬极閹捐妫橀柕鍫濇椤忓爼姊虹捄銊ユ瀾闁哄顭烽獮蹇旑槹鎼存稐绮甸梻浣芥硶閸犳劙寮告繝姘闁绘垼濮ら弲鎼佹煛閸屾ê锟芥牜锟芥艾缍婇弻銊╂偄閸涘﹦浼勯梺褰掝棑閸忔﹢寮幘璇叉闁靛牆妫楅鍫曟⒑鐠恒劌鏋戦柡瀣煼楠炲繘鏁撻敓锟�
	@RequestMapping("/index")
	public String getByType(Map<String, Object> map) {
		List<House> Types = houseInfoService.getByType();
		map.put("houseTypes", Types);
		return "index";
	}

	@RequestMapping("/getAllHouseList")
	public String getAllHouseList(Map<String, Object> map) {
		List<House> houses = houseInfoService.getAllHouses();
		map.put("houses", houses);
		return "HouseListing";
	}

	@RequestMapping("/getall")
	public void getNamePut(HttpServletRequest request, HttpServletResponse response, String keyName,
			Map<String, Object> map) {
		// 从js传的参数放到域中 先判断1 和 4
		String v1 = null; // 地区
		String v22 = null;// 租金
		String v33 = null;// 室
		String v44 = null;// 装修情况

		Integer v2 = 0;
		Integer v21 = 0;
		Integer v3 = 0;
		Integer v4 = 0;
		String tiaojian = request.getParameter("keyName");
		String[] tiaojianhe = tiaojian.split(",");

		HttpSession session = request.getSession();
		session.setAttribute("tiaojian", tiaojian);

		for (int i = 0; i < tiaojianhe.length; i++) {
			v1 = tiaojianhe[0];
			v22 = tiaojianhe[1];
			v33 = tiaojianhe[2];
			v44 = tiaojianhe[3];
		}

		if (v1.equals("不限")) {
			v1 = null;
		}

		// 租金判断
		if (v22.equals("不限")) {
			v2 = null;
			v21 = null;
		} else if (v22.equals("500元以下")) {
			v2 = 0;
			v21 = 500;
		} else if (v22.equals("500-1000元")) {
			v2 = 500;
			v21 = 1000;
		} else if (v22.equals("1000-1500元")) {
			v2 = 1000;
			v21 = 1500;
		} else if (v22.equals("1500-2000元")) {
			v2 = 1500;
			v21 = 2000;
		} else if (v22.equals("2000-3000元")) {
			v2 = 2000;
			v21 = 3000;
		} else if (v22.equals("3000-4500元")) {
			v2 = 3000;
			v21 = 4500;
		} else {
			v2 = 4500;
			v21 = 200000000;
		}
		// 厅室判断
		if (v33.equals("不限")) {
			v3 = null;
		} else if (v33.equals("一室")) {
			v3 = 1;
		} else if (v33.equals("二室")) {
			v3 = 2;
		} else if (v33.equals("三室")) {
			v3 = 3;
		} else if (v33.equals("四室")) {
			v3 = 4;
		} else if (v33.equals("四室以上")) {
			v3 = 5;
		}
		// 装修判断
		if (v44.equals("不限")) {
			v4 = null;
		} else if (v44.equals("毛坯")) {
			v4 = 1;
		} else if (v44.equals("简单装修")) {
			v4 = 2;
		} else if (v44.equals("中等装修")) {
			v4 = 3;
		} else if (v44.equals("精装修")) {
			v4 = 4;
		} else if (v44.equals("豪华装修")) {
			v4 = 5;
		}
		ShaiXuan shaiXuan = new ShaiXuan(v1, v2, v21, v3, v4);

		if (v1 == null && v2 == null && v21 == null && v3 == null && v4 == null) {
			List<House> houses1 = houseInfoService.getAllHouses();
			Gson gson = new Gson();
			String json = gson.toJson(houses1);

			try {
				response.getWriter().print(json);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {

			List<House> houses = houseInfoService.getHouseMoHuAll(shaiXuan);

			Gson gson = new Gson();
			String json = gson.toJson(houses);

			try {
				response.getWriter().print(json);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@RequestMapping("/houseall111")
	public String getAllHouses1(Map<String, Object> map) {
		List<House> houses1 = houseInfoService.getAllHouses();

		map.put("houses", houses1);
		return "housesx";
	}
}
