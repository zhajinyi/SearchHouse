<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link href="${pageContext.request.contextPath}/cssX/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
<link href="${pageContext.request.contextPath}/cssX/styles.css"
	rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link href="${pageContext.request.contextPath}/cssX/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- slide -->
<script
	src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
<meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
<title>百度地图API自定义地图</title>
<!--引用百度地图API-->
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=gmA49BMkWGcrhj5gMv7QqQR5Tptml3Rv"></script>
<style type="text/css">
    a{text-decoration: none;}
    a:HOVER {
	text-decoration: none;
}
</style>
</head>
<body>

	<div class="header">
		<div class="container">
			<!--logo-->
			<div class="logo">
				<h1>
					<a href="${pageContext.request.contextPath}/index">搜趣房</a>
				</h1>
			</div>
			<!--//logo-->
			<div class="top-nav">
				<ul class="right-icons">
					<c:choose>
						<c:when test='${empty user.userId}'>
							<!-- <li><span ><i class="glyphicon glyphicon-phone"> </i>+1384 757 546</span></li> -->
							<li><a
								href="${pageContext.request.contextPath}/getUrl?userId="><i
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
				</ul>

				<div class="clearfix"></div>
				<!---pop-up-box---->
				<link href="${pageContext.request.contextPath}/cssX/popuo-box.css"
					rel="stylesheet" type="text/css" media="all" />
				<script
					src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js"
					type="text/javascript"></script>
				<!---//pop-up-box---->

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//-->

	<script type="text/javascript">
		var usr = "${user}";
		function fabu() {

			if (usr == null || usr == "") {
				alert("请先登录");
				window.location.href = "getUrl?userId=";
				return false;
			} else {
				isRenZheng();
			}
		}

		function isRenZheng() {
			if ("${empty user.qualityRating}") {
				alert("请进行账户认证！");
				window.location.href = "${pageContext.request.contextPath}/page/UserCenter/UserSet/UserSet.jsp?i=0";
			} else {
				window.location.href = "${pageContext.request.contextPath}/addHouseInit";
			}
		}
	</script>

	<div class="slider">
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
	</div>

	<!--header-bottom-->
	<div class="banner-bottom-top">
		<div class="container">
			<div class="bottom-header">
				<div class="header-bottom">
					<div class=" bottom-head">
						<a href="index">
							<div class="buy-media">
								<i class="buy"></i>
								<h6>首页</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="${pageContext.request.contextPath}/houseType?pageNo=1">
							<div class="buy-media">
								<i class="apart"> </i>
								<h6>品牌公寓</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="${pageContext.request.contextPath}/houseall111">
							<div class="buy-media">
								<i class="pg"> </i>
								<h6>房屋筛选</h6>
							</div>
						</a>
					</div>

					<script type="text/javascript">
						function center() {

							var usr = "${user}";

							if (usr == null || usr == "") {
								alert("请先登录");
								window.location.href = "getUrl?userId=";
								return false;
							} else {
								//若是登录后 可直接跳转到我要租房  href="${pageContext.request.contextPath}/page/rental.jsp"
								window.location.href = "page/UserCenter/UserInfo/UserCenter.jsp";
							}
						}
					</script>

					<div class=" bottom-head" style="cursor: pointer">
						<a onclick="center()">
							<div class="buy-media">
								<i class="rent"> </i>
								<h6>个人中心</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="#">
							<div class="buy-media">
								<i class="loan"> </i>
								<h6>最近浏览</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="#">
							<div class="buy-media">
								<i class="apart"> </i>
								<h6>联系客服</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="${pageContext.request.contextPath}/page/FindMap.jsp">
							<div class="buy-media">
								<i class="sell"> </i>
								<h6>定位</h6>
							</div>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--//-->

	<!--//header-bottom-->


	<!--//header-->
	<!--content-->
	<div class="content">
		<div class="content-grid">
			<div class="container">
				<h3>
					<a href="${pageContext.request.contextPath}/houseall?pageNo=1">全部房源</a>
				</h3>
				<div class="col-md-4 box_2">
					<a
						href="${pageContext.request.contextPath}/getHouseById?houseId=${houseTypes[0].houseId}"
						class="mask"> <img class="img-responsive zoom-img"
						src="${pageContext.request.contextPath}/imagess/3.jpg" alt="">
						<span class="four">￥${houseTypes[0].housePrice} </span>
					</a>
					<div class="most-1">
						<h5>
							<a href="#">${houseTypes[0].houseName}</a>
						</h5>
						<p>${houseTypes[0].houseArea}㎡&nbsp;&nbsp;${houseTypes[0].locationName}</p>
					</div>
				</div>
				<div class="col-md-4 box_2">
					<a
						href="${pageContext.request.contextPath}/getHouseById?houseId=${houseTypes[1].houseId}"
						class="mask"> <img class="img-responsive zoom-img"
						src="${pageContext.request.contextPath}/imagess/4.jpeg" alt="">
						<span class="four">￥${houseTypes[1].housePrice} </span>
					</a>
					<div class="most-1">
						<h5>
							<a href="#">${houseTypes[1].houseName}</a>
						</h5>
						<p>${houseTypes[1].houseArea}㎡&nbsp;&nbsp;${houseTypes[1].locationName}</p>
					</div>

				</div>
				<div class="col-md-4 box_2">
					<a
						href="${pageContext.request.contextPath}/getHouseById?houseId=${houseTypes[2].houseId}"
						class="mask"> <img class="img-responsive zoom-img"
						src="${pageContext.request.contextPath}/images/3.jpg" alt="">
						<span class="four">￥${houseTypes[2].housePrice} </span>
					</a>
					<div class="most-1">
						<h5>
							<a href="#">${houseTypes[2].houseName}</a>
						</h5>
						<p>${houseTypes[2].houseArea}㎡&nbsp;&nbsp;${houseTypes[2].locationName}</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--phone-->
		<div class="phone">
			<div class="container">
				<div class="col-md-6">
					<div
						style="width: 500px; height: 350px; border: #ccc solid 1px; font-size: 12px"
						id="map"></div>
					<input type="hidden" id="cityName" value="苏州" /> <!-- <input
						type="button" onclick="setCity()" value="查找" /> -->
				</div>
				<div class="col-md-6 phone-text">
					<h4>地图轻松找房</h4>
					<div class="text-1">
						<h5>位置跟踪器</h5>
						<p>知晓自己的位置</p>
					</div>
					<div class="text-1">
						<h5>地图搜索</h5>
						<p>附件房源一目了然</p>
					</div>
					<div class="text-1">
						<h5>快速的细节</h5>
						<p>更加方便的搜索</p>
					</div>
					<a href="${pageContext.request.contextPath}/page/FindMap.jsp"
						target="_blank" class="hvr-sweep-to-right more">轻松一点</a>
				</div>
			</div>
		</div>
		<!--//phone-->
		<!--project--->
	</div>
	<!--footer-->
	<div class="footer">
		<div class="container"></div>
		<div class="footer-bottom">
			<div class="container">
				<div class="col-md-4 footer-logo">
					<h2>
						<a href="${pageContext.request.contextPath}/index">搜趣房</a>
					</h2>
				</div>
				<div class="col-md-8 footer-class"></div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	//创建和初始化地图函数：
	function initMap() {
		createMap();//创建地图
		setMapEvent();//设置地图事件
		addMapControl();//向地图添加控件
		addMapOverlay();//向地图添加覆盖物
	}
	function createMap() {
		map = new BMap.Map("map");
		map.centerAndZoom(new BMap.Point(120.592014, 31.303584), 14); //设置中心点坐标和地图级别
	}
	function setMapEvent() {
		map.enableScrollWheelZoom(); //激活滚轮调整大小
		map.enableKeyboard(); //开启键盘可以控制上下左右
		/*  map.enableDragging();     *///可以拖拽
		map.enableDoubleClickZoom()

		/*   map.enableContinuousZoom();  //开启连续缩放效果
		 map.enableInertialDragging();//开启惯性拖拽效果*/

	}
	function addClickHandler(target, window) {
		target.addEventListener("click", function() {
			target.openInfoWindow(window);
		});
	}
	function addMapOverlay() {
	}
	//向地图添加控件
	function addMapControl() {
		var navControl = new BMap.NavigationControl({
			anchor : BMAP_ANCHOR_TOP_LEFT,
			type : BMAP_NAVIGATION_CONTROL_LARGE
		});
		map.addControl(navControl);

		map.addControl(new BMap.NavigationControl());
		map.addControl(new BMap.ScaleControl()); //比例尺控件
		map.addControl(new BMap.OverviewMapControl());
		map.addControl(new BMap.MapTypeControl()); //设置地图卫星地图三维

	}
	var map;
	initMap();

	var search = new BMap.LocalSearch("中国", {

		onSearchComplete : function(result) {

			if (search.getStatus() == BMAP_STATUS_SUCCESS) {

				var res = result.getPoi(0);

				var point = res.point;

				map.centerAndZoom(point, 11);

			}

		},
		renderOptions : { //结果呈现设置，

			map : map,

			autoViewport : true,

			selectFirstResult : true

		},
		onInfoHtmlSet : function(poi, html) {//标注气泡内容创建后的回调函数，有了这个，可以简单的改一下返回的html内容了。

			// alert(html.innerHTML)

		}//这一段可以不要，只不过是为学习更深层次应用而加入的。

	});

	function setCity() {
		search.search(document.getElementById("cityName").value);

	}
	search.search(document.getElementById("cityName").value);
</script>
</html>