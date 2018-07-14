<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>搜趣房</title>

<!-- Styles -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600"
	rel="stylesheet">


<!-- favicon and touch icons -->
<link rel="shortcut icon" href="<%=basePath%>/assets/images/favicon.png">

<!-- Bootstrap -->

<link href="<%=basePath%>/cssY/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="<%=basePath%>/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=basePath%>/plugins/slick/slick.css" rel="stylesheet">
<link href="<%=basePath%>/plugins/slick-nav/slicknav.css"
	rel="stylesheet">
<link href="<%=basePath%>/plugins/wow/animate.css" rel="stylesheet">
<link href="<%=basePath%>/assets/css/bootstrap.css" rel="stylesheet">
<link href="<%=basePath%>/assets/css/theme.css" rel="stylesheet">
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=gmA49BMkWGcrhj5gMv7QqQR5Tptml3Rv"></script>
<style type="text/css">
#shouye {
	margin-left: 20px;
	position: relative;
	cursor: pointer;
}

#pingpai {
	margin-left: 20px;
	position: relative;
	cursor: pointer;
}

.caption {
	position: absolute;
	top: 44%;
	left: 50%;
}

.search11 {
	width: 446px;
	height: 52px;
	background-color: white;
	color: #343434;
	font-size: 24px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -27px 0 0 -296px;
	border: 1px solid black;
	border-radius: 10px;
	padding: 0 10px;
}

.button11 {
	width: 120px;
	height: 54px;
	background-color: white;
	font-size: 24px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -28px 0 0 155px;
	border: 1px solid black;
	border-radius: 10px;
	outline: none;
	cursor: pointer;
	color: #337ab6;
}

.a1 {
	text-decoration: none;
}

.button12 {
	width: 120px;
	height: 54px;
	background-color: white;
	color: #343434;
	font-size: 24px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -28px 0px 0 280px;
	border: 1px solid black;
	border-radius: 10px;
	outline: none;
	cursor: pointer;
}
</style>
<style>
.addressSearch {
	display: inline-block;
}

#XXzhanshi {
	float: left;
	width: 35%;
	height: 590px;
	margin: 3% 0 0 5%;
	overflow: auto;
}
</style>
<script type="text/javascript">
	function fabu() {
		var usr = "${user}";

		if (usr == null || usr == "") {
			alert("请先登录");
			window.location.href = "page/login.jsp";
			return false;
		} else {
			//若是登录后直接调整到          href="${pageContext.request.contextPath}/addHouseInit"
			window.location.href = "${pageContext.request.contextPath}/addHouseInit";
		}
	}
</script>
</head>
<body class="listing-template">
	<div id="page-loader">
		<div class="loaders">
			<img src="<%=basePath%>/assets/images/loader/3.gif"
				alt="First Loader"> <img
				src="<%=basePath%>/assets/images/loader/4.gif" alt="First Loader">
		</div>
	</div>

	<div class="header">
		<div class="container">
			<div class="logo">
				<h1>
					<a href="<%=basePath%>/index">搜趣房</a>
				</h1>
			</div>
			<!--//logo-->
			<div class="top-nav">
				<ul class="right-icons">
					<c:choose>
						<c:when test='${empty user.userId}'>
							<li><a
								href="${pageContext.request.contextPath}/page/login.jsp"><i
									class="glyphicon glyphicon-user"> </i>登录</a></li>
							<li><a
								href="${pageContext.request.contextPath}/page/register.jsp">注册</a></li>
						</c:when>
						<c:otherwise>
							<li><a
								href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserCenter.jsp"><i
									class="glyphicon glyphicon-user"></i>${user.userId}</a></li>
						</c:otherwise>
					</c:choose>
					<li><a
						href="<c:choose><c:when test='${empty user.userId}'>${pageContext.request.contextPath}/page/login.jsp</c:when><c:otherwise>${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserCenter.jsp</c:otherwise></c:choose>">个人中心</a>
					</li>
					<li><a
						href="<c:choose><c:when test='${empty user.userId}'>${pageContext.request.contextPath}/page/login.jsp</c:when><c:otherwise>${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserCenter.jsp</c:otherwise></c:choose>">帮助中心</a>
					</li>
				</ul>
				<div class="clearfix"></div>

			</div>
		</div>
		<div class="clearfix"></div>
	</div>


	<div id="site-banner" class="text-center clearfix"></div>

	<div class="banner1">
		<div class="caption">
			<div class="center1">
				<form action="${pageContext.request.contextPath}/getHouseByKey">
					<input type="hidden" name="pageNo" value=1 /> <input type="text"
						class=" search11" placeholder="请输入要查询的需求" name="keyName" /> <input
						type="submit" class="button11" value="搜  索" />
				</form>
				<button class="button12">
					<a class="a1" onclick="fabu()">免费发布</a>
				</button>
			</div>
		</div>
	</div>
	<div style="width: 730px; margin: auto;">
		<div class="addressSearch" style="margin-left: -30%">
			<h4 style="display: inline-block">要查询的地址：</h4>
			<input id="text_" type="text" style="margin-right: 50px;"
				name="keyName" /> <input id="result_" type="hidden"
				style="width: 10px" /> <input type="button" value="查询"
				onclick="searchByStationName();" style="margin-top: -20%" />

		</div>
		<div id="container"
			style="position: absolute; margin-top: 0; margin-left: 20%; width: 730px; height: 590px; border: 1px solid gray; overflow: hidden;">
		</div>
	</div>
	<div id="XXzhanshi">
		<div id="fangwuXX"></div>
	</div>
	<footer id="footer" style="margin-top:250px">
	<div class="site-footer"></div>
	<div class="site-footer-bottom">
		<div class="container" style="margin-left: 34%">
			<p class="copyright pull-left wow slideInRight">
				Copyright &copy; 2017.Company name All rights reserved.<a
					target="_blank" href="http://sc.chinaz.com/moban/">搜趣房</a>
			</p>
		</div>
	</div>
	</footer>
	<a href="#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<%=basePath%>/assets/js/jquery.min.js"></script>
	<script src="<%=basePath%>/assets/js/jquery.migrate.js"></script>
	<script src="<%=basePath%>/assets/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/plugins/slick-nav/jquery.slicknav.min.js"></script>
	<script src="<%=basePath%>/plugins/slick/slick.min.js"></script>
	<script src="<%=basePath%>/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="<%=basePath%>/plugins/tweetie/tweetie.js"></script>
	<script src="<%=basePath%>/plugins/forms/jquery.form.min.js"></script>
	<script src="<%=basePath%>/plugins/forms/jquery.validate.min.js"></script>
	<script src="<%=basePath%>/plugins/modernizr/modernizr.custom.js"></script>
	<script src="<%=basePath%>/plugins/wow/wow.min.js"></script>
	<script src="<%=basePath%>/plugins/zoom/zoom.js"></script>
	<script src="<%=basePath%>/plugins/mixitup/mixitup.min.js"></script>
	<!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places"></script>--->
	<script src="<%=basePath%>/plugins/whats-nearby/source/WhatsNearby.js"></script>
	<script src="<%=basePath%>/assets/js/theme.js"></script>
</body>
<script type="text/javascript">
	var map = new BMap.Map("container");
	map.centerAndZoom("苏州", 12);
	map.enableScrollWheelZoom(); //启用滚轮放大缩小，默认禁用
	map.enableContinuousZoom(); //启用地图惯性拖拽，默认禁用

	map.addControl(new BMap.NavigationControl()); //添加默认缩放平移控件
	map.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件
	map.addControl(new BMap.OverviewMapControl({
		isOpen : true,
		anchor : BMAP_ANCHOR_BOTTOM_RIGHT
	})); //右下角，打开

	var localSearch = new BMap.LocalSearch(map);
	localSearch.enableAutoViewport(); //允许自动调节窗体大小
	var adds = new Array();
	var index = 0;
	var myGeo = new BMap.Geocoder();

	function searchByStationName() {
		map.clearOverlays();//清空原来的标注
		var keyword = document.getElementById("text_").value;
		localSearch.setSearchCompleteCallback(function(searchResult) {
			var poi = searchResult.getPoi(0);
			document.getElementById("result_").value = poi.point.lng + ","
					+ poi.point.lat;
			map.centerAndZoom(poi.point, 13);
			var marker = new BMap.Marker(new BMap.Point(poi.point.lng,
					poi.point.lat)); // 创建标注，为要查询的地方对应的经纬度
			map.addOverlay(marker);
			var content = document.getElementById("text_").value
					+ "<br/><br/>经度：" + poi.point.lng + "<br/>纬度："
					+ poi.point.lat;
			var infoWindow = new BMap.InfoWindow("<p style='font-size:14px;'>"
					+ content + "</p>");
			marker.addEventListener("click", function() {
				this.openInfoWindow(infoWindow);
			});
			//marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
		});
		localSearch.search(keyword);
		//xmlhttp对象
		var xmlhttp;

		var str = document.getElementById("text_").value;
		if (window.XMLHttpRequest) {
			//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
			xmlhttp = new XMLHttpRequest();
		} else {
			// IE6, IE5 浏览器执行代码
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				$("#fangwuXX").empty();
				var houses = JSON.parse(xmlhttp.responseText);
				for ( var x in houses) {
					var house = houses[x];
					adds[x] = house.houseName;
					$("#fangwuXX")
							.append(
									"<h5><div class='fwxxlei' style='width=90%;height=auto;margin-left:5%'><a href='${pageContext.request.contextPath}/getHouseById?houseId="
											+ house.houseId
											+ "'>"
											+ house.houseName
											+ "<br>"
											+ house.houseArea
											+ "㎡&nbsp;&nbsp;"
											+ house.housePrice
											+ "元/月</a></div></h5><br>");
				}
				bdGEO();
			}
		}
		xmlhttp.open("GET",
				"${pageContext.request.contextPath}/getHouseByKey1?keyName="
						+ str, true);
		xmlhttp.send();

	}
	//地址解析（遍历数据库，将地址放入adds中，标注到地图中）
	function bdGEO() {
		var add = adds[index];
		geocodeSearch(add);
		index++;
	}
	function geocodeSearch(add) {
		if (index < adds.length) {
			setTimeout(window.bdGEO, 100);
		}
		myGeo.getPoint(add, function(point) {
			if (point) {
				var address = new BMap.Point(point.lng, point.lat);
				addMarker(address, new BMap.Label(index + ":" + add, {
					offset : new BMap.Size(20, -10)
				}));
			}
		}, "苏州市");
	}
	// 编写自定义函数,创建标注
	function addMarker(point) {
		var marker = new BMap.Marker(point);
		map.addOverlay(marker);
	}
</script>
</html>