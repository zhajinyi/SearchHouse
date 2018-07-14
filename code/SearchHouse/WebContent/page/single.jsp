<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Single</title>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<link href="<%=basePath%>/cssY/styles.css" rel="stylesheet">
<script type="text/javascript" src="<%=basePath%>/js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/cssY/style1.css">
	<!--//menu-->
	<!--theme-style-->
	
	<!-- Styles -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">


<!-- favicon and touch icons -->
<link rel="shortcut icon" href="<%=basePath%>/assets/images/favicon.png">

<!-- Bootstrap -->
<link href="<%=basePath%>/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=basePath%>/plugins/slick/slick.css" rel="stylesheet">
<link href="<%=basePath%>/plugins/slick-nav/slicknav.css" rel="stylesheet">
<link href="<%=basePath%>/plugins/wow/animate.css" rel="stylesheet">
<link href="<%=basePath%>/assets/css/bootstrap.css" rel="stylesheet">
<link href="<%=basePath%>/assets/css/theme.css" rel="stylesheet">
<link href="<%=basePath%>/cssY/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=basePath%>/cssY/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=basePath%>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/scripts.js"></script>

<link href="<%=basePath%>/css/styles.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ModalWindowEffects/css/component.css" />

<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
<meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
<title>百度地图API自定义地图</title>
<!--引用百度地图API-->
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=gmA49BMkWGcrhj5gMv7QqQR5Tptml3Rv"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/ueditor/lang/zh-cn/zh-cn.js"></script>

<style type="text/css">

.form-info-form2, form2 {
	width: 650px;
	height: 45px;
}

.form-info-form2, form2 {
	margin: 0;
	height: 100%;
	width: 100%;
	opacity: 1;
}

#button {
	position: absolute;
	right: 0;
	width: 20%;
	height: 100%;
	opacity: 0.5;
	margin-top: -14px;
}

#mapDingWei {
	width: 860px;
	height: 340px;
	border: 1px solid black;
}

#xingxing {
	width: 30px;
	height: 30px;
	margin: -70px 0 0 430px;
	display: inline-block;
}

#xingxing.hover {
	cursor: pointer;
}

#collectNum {
	margin: -150px 0 0 350px;
	display: inline-block;
	font-size: 30px;
	color: #00FFFF;
	font-style: italic;
}
#contentChat{
        font-size:15px;
        width:100%;
        height:50%;
        
        /* border: none; */
        text-align:left;
        color:green;/*#F75000*/
        font-size:20px;
        border: 1px solid #F1F1F1;
        overflow-y:auto;
        /* overflow-x:auto; */
        }
        #message2{
        width:100%;
        height:10%;
        border: none;
       
        background-color:#27DA93;
        border: 1px solid #F1F1F1;
        }
        #message1{
        width:100%;
        height:31%;
        /* height:231px; */
        /* border: none; */
        max-height:120;
        text-align:left;
        color:#F75000;
        border: 1px solid #F1F1F1;
        }
        /* body{
        width:100%;
        height:400px;
        text-align: center;
        /* background-image:url("${pageContext.request.contextPath}/image/background.jpg"); */
        } */
        /* img{
        width: 40px;
        height: 40px;
        border-radius:50%; 
        float:left;
        } */
        #text1{
        font-size: 20px;
        color:green;
        }
        #pChat{
        width:100%;
        font-family: 幼圆;
        font-size: 15px;
        position:absolute;
        margin-left:-10px;
        color:green;
        display: block;
        float:left;
        
        }
        
        #chattext{
        color:green;
        width:100%;
        height:32px;
        text-align: left;
        float:left;
        }
        /* .btn0{
        	position: absolute;
        } */
        #spanChat{
       		text-align: center;
       		position: absolute;
        	margin-left:2%;
        	margin-top: 10px;
        	font-size: 20px;
        	    	
        }
         .black_overlay{
            display: none;     
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: #F0F0F0;
            z-index:1001;
            -moz-opacity: 0.8;
            opacity:.80;
            filter: alpha(opacity=80);
        }
        #allChat{
            display: none;
            position: absolute;
            top: 25%;
            left: 25%;
            width: 601px;
        	height: 500px;
           /*padding: 20px;*/
           border: 1px solid #F1F1F1;
            background-color: white;
            z-index:1002;
            /* overflow: auto; */
        }
</style>
<script type="text/javascript">
	function shoucangpanduan() {
		var usr = "${user}";
		if (usr == null || usr == "") {

			alert("请先登录");
			window.location.href = "getUrl?userId=";
			return false;
		} else {
			collectThis();
		}
	}

	function collectThis() {

		//xmlhttp对象
		var xmlhttp;
		var str = $("#number").text();

		var imgChange = document.getElementById("xingxing");

		if (window.XMLHttpRequest) {
			//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
			xmlhttp = new XMLHttpRequest();
		} else {
			// IE6, IE5 浏览器执行代码
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var collectNum = JSON.parse(xmlhttp.responseText);
				$("#number").text(collectNum);
				if (collectNum > str) {
					imgChange.src = "${pageContext.request.contextPath}/img/realxing.jpg";
				} else {
					imgChange.src = "${pageContext.request.contextPath}/img/blockxing.jpg";
				}
			}
		}
		xmlhttp.open("GET","${pageContext.request.contextPath}/addcollect?houseId=${house.houseId}&userId=${user.userId}&collectNum="+ str, true);
		xmlhttp.send();
	}
</script>
</head>
<body>
	<div class="header">
	<!-- 聊天 -->
<div id="allChat" class="white_content">

    <div id="message2">
		<span id="spanChat">
		Message...
		</span>
	</div>	
	<div id="contentChat"></div>	
	<div id="message1">
		<script id="editor" type="text/plain" style="width:100%;height:120px;border: 1px solid #F1F1F1;"></script>	
	</div>
	
	<div style="width:100%;height:9%; ground-color:whitesmoke;text-align: center;">
		 <a href = "JavaScript:void(0)" class="hvr-sweep-to-right more" onclick="send()">发送</a>	
	     <a href = "JavaScript:void(0)" class="hvr-sweep-to-right more" onclick = "document.getElementById('allChat').style.display='none';">关闭</a>
	</div>
</div>
<div id="fade" class="black_overlay"></div>	

					<script type="text/javascript">
					//百度编辑器
					var ue = UE.getEditor('editor',{
					elementPathEnabled: false, //删除元素路径
					wordCount: false    //删除字数统计
					});
					ue.ready(function() {
					      //获取html内容，返回: <p>hello</p>
					      var html = ue.getContent(); 
					  });
					var  ws;
					var url="ws://localhost:8080/SearchHouse/chatSocket?username=${user.userId}"
					window.onload=connect;	
					function connect(){
						//检测浏览器兼容性
						if ('WebSocket' in window) {
						    ws = new WebSocket(url);
						} else if ('MozWebSocket' in window) {
						    ws = new MozWebSocket(url);
						} else {
						    alert('浏览器不支持！！！');
						    return;
						}	 
						ws.onmessage=function(event){
							//jquery解析json
							eval("var result="+event.data);
							//某某人进入了聊天室/退出聊天室
							if(result.alert!=undefined){
								//$("#contentChat").append(result.alert + "<br/>");
							}
							//刷新联系人列表
							if (result.names != undefined) {
								$("#userList").html("");
								$(result.names).each(function() {
									$("#userList").append("<input type=checkbox id=test value="+this+">"+this + "<br/>");
								});
							}
					
							//往消息框追加消息
							if (result.from != undefined) {
								/* result.from +  */
								$("#contentChat").append("<p id='pChat' style='width:40px;height:40px;border-radius:50%;float:left;'/> "+result.from+":" + result.date +  "</p>"+ result.sendMsg);
							}
						};
					}
					//发送消息往后台传送消息
					function send() {
						var val=ue.getContent('editor')
						//var val = $("#editor").val();  //消息内容
						var obj = null;
					
						//jqery和js如何判断checkbox是否选中 
						//$("input[type='checkbox']").is(':checked')
						//返回结果：选中=true，未选中=false
						if ($("input[type='checkbox']").is(':checked')){
							var to = $("#userList :checked").val();
							obj = {
								to:'${house.userInfo.userId}',
								msg:val,
								type:2,  //1广播，2单聊
						};
						}else{
							obj = {
								msg:val,
								type:1,  //1广播，2单聊
							};
						};
						var str = JSON.stringify(obj);	//js将对象转为json
						ws.send(str);					//发送消息
						
						ue.setContent('');				//清空文本框
					}
					</script>
		<div class="container">
			<div class="logo">
				<h1>
					<a href="${pageContext.request.contextPath}/index">搜趣房</a>
				</h1>
			</div>
			<script type="text/javascript">
				//登录
				function login() {
					var usr = "${user}";
					if (usr == null || usr == "") {
						alert("请先登录");
						window.location.href = "getUrl?userId=";
						return false;
					} else {
						//若是登录后直接调整到   微聊页面
						window.location.href = "SearchHouse/page/contact.jsp";
					}
				}
				function person() {
					var usr = "${user}";
					if (usr == null || usr == "") {
						alert("请先登录");
						window.location.href = "getUrl?userId=";
						return false;
					} else {
						//若是登录后直接调整到   微聊页面
						window.location.href = "page/UserCenter/UserInfo/UserCenter.jsp";
					}
				}
				function center() {
					var usr = "${user}";
					if (usr == null || usr == "") {
						alert("请先登录");
						window.location.href = "getUrl?userId=";
						return false;
					} else {
						//若是登录后直接调整到   
						window.location.href = "SearchHouse/page/UserCenter/UserInfo/UserCenter.jsp";
					}
				}
			</script>
			<div class="top-nav">
				<ul class="right-icons">
					<c:choose>
						<c:when test='${empty user.userId}'>
							<li><a onclick="login()"><i
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
					<li><a onclick="person()">个人中心</a></li>
					<li><a onclick="center()">帮助中心</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class=" banner-buying">
		<div class="container">
			<div class="login">
				<div class="form-info-form2">
					<form class="form2"
						action="${pageContext.request.contextPath}/getHouseByKey">
						<input type="text" name="keyName" placeholder="关键字" value=""
							required="">
						<button id="button" type="submit">搜索</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="buy-single-single">
			<div class="col-md-9 single-box" style="width: 1130px">
				<div class=" buying-top">
					<div class="flexslider">
						<ul class="slides">
							<c:forEach items="${house.photos }" var="photo">
								<li data-thumb="<%=basePath%>/imagess/${photo}"
									style="height: 600px"><img
									src="<%=basePath%>/imagess/${photo}"/></li>
							</c:forEach>
						</ul>
					</div>
					<!-- FlexSlider -->
					<script defer src="<%=basePath%>/js/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="<%=basePath%>/css/flexslider.css"
						type="text/css" media="screen" />

					<script>
						$(window).load(function() {
							$('.flexslider').flexslider({
								animation : "slide",
								controlNav : "thumbnails"
							});
						});
					</script>
				</div>
				<div class="buy-sin-single" style="margin-left: 100px">
					<div class="buy-sin-single add1">
						<div class="col-sm-5 middle-side immediate">
							<h4>${house.housePrice }元/月</h4>
							<p class="p1">
								租赁方式：<span>${house.houseTypeId==0?"整租":"单间" }</span>
							</p>
							<p class="p1">
								房屋类型：<span>${house.houseUnit }&nbsp;&nbsp;${house.houseArea }平&nbsp;&nbsp;${houses.fitment.fitmentName }</span>
							</p>
							<p class="p1">
								公寓名称：<span>${house.houseName }&nbsp;&nbsp;${house.houseFloor }层/共${houses.houseFloorTotal }层</span>
							</p>
							<p class="p1">
								所在小区：<span>${house.houseAddress }</span>
							</p>
							<p class="p1">
								所属区域：<span>${house.locationName }&nbsp;&nbsp;&nbsp;</span>
							</p>
							<!-- 距离地铁1号线玉山路1米 -->
							<div class="right-side">
								<div class="md-modal md-effect-1" id="modal-1">
									<div class="md-content">
										<h3>联系人信息</h3>
										<div>
											<p></p>
											<ul>
												<li><strong>姓名:<>${userf.realName }<>
												<li><strong>电话:<>${userf.phoneNumber }<>
												<li><strong>邮箱:<>${userf.userMail }<>
												<li><strong>地址:<>${userf.address }<> 
											</ul>
											<a class="md-close hvr-sweep-to-right more">ok!</a>
										</div>
									</div>
								</div>
								<a class="md-trigger hvr-sweep-to-right more"
									data-modal="modal-1" onclick="panduan()">联系人</a>
								<script
									src="${pageContext.request.contextPath}/ModalWindowEffects/js/classie.js"></script>
								<script
									src="${pageContext.request.contextPath}/ModalWindowEffects/js/modalEffects.js"></script>
								<a href = "JavaScript:void(0)" class="hvr-sweep-to-right more"  onclick="weiliao()">微聊</a>
								<a class="hvr-sweep-to-right more" onclick="yuyue()">预约</a> 
								<a class="hvr-sweep-to-right more" onclick="zufan()">租房</a>
							</div>
						</div>
						<div id="collectNum">
							<span id="number">${house.collectNum }</span>
						</div>
						<div id="dianxing" onclick="shoucangpanduan()">
							<img id="xingxing"
								src="${pageContext.request.contextPath}/img/blockxing.jpg">
						</div>

						<div class="col-sm-7 buy-sin"
							style="width: 450px; height: auto; margin-left: 50px">
							<h4>描述</h4>
							<p>${house.detailedIntro }</p>
						</div>
					</div>
				</div>
				<div class="map-buy-single" style="margin-left: 100px">
					<h4>房源图片</h4>
					<c:forEach items="${house.photos }" var="photo">
						<img src="<%=basePath%>/imagess/${photo}"
							style="width: 850px; height: 450px; margin-top: 1%" />
					</c:forEach>
				</div>

				<div class="map-buy-single" style="margin-left: 100px">
					<h4>地理位置</h4>
					<div id="mapDingWei"></div>
					<input type="hidden" id="cityName" value="${house.houseAddress}" />

				</div>

			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="footer" style="height: 50px; margin-top: 50px">
		<div class="container"></div>
		<div class="footer-bottom">
			<div class="container">
				<div class="col-md-4 footer-logo">
					<h2>
						<a href="<%=basePath%>/index">搜趣房</a>
					</h2>
				</div>
				<div class="col-md-8 footer-class"></div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- <div class="container">
		<div class="future"></div>
	</div> -->
	<a href="#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<%--<script src="<%=basePath%>/assets/js/jquery.min.js"></script>
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
	<script src="<%=basePath%>/assets/js/theme.js"></script>--%>
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
		map = new BMap.Map("mapDingWei");
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
	$(document).ready(function() {
		search.search(document.getElementById("cityName").value);
	})
</script>
<script type="text/javascript">
	function panduan() {
		var usr = "${user}";
		if (usr == null || usr == "") {
			alert("请先登录");
			window.location.href = "getUrl?userId=";

			return false;
		}
	}

	//微聊
	function weiliao() {
		var usr = "${user}";
		if (usr == null || usr == "") {
			alert("请先登录");
			window.location.href = "getUrl?userId=";
			return false;
		} else {
			//若是登录后直接调整到   微聊页面
			document.getElementById('allChat').style.display='block';
			/* window.location.href = "page/contact.jsp"; */
		}
	}

	//预约
	function yuyue() {
		var usr = "${user}";
		if (usr == null || usr == "") {
			alert("请先登录");
			window.location.href = "getUrl?userId=";
			return false;
		} else {
			//若是登录后 可直接跳转到预约界面   href="${pageContext.request.contextPath}/addOrderInit?houseId=${house.houseId}&&userId=${house.userInfo.userId}"
			window.location.href = "addOrderInit?houseId=${house.houseId}&&userId=${house.userInfo.userId}";
		}
	}

	//租房
	function zufan() {
		var usr = "${user}";
		if (usr == null || usr == "") {
			alert("请先登录");
			window.location.href = "getUrl?userId=";
			return false;
		} else {
			//若是登录后 可直接跳转到我要租房  href="${pageContext.request.contextPath}/page/rental.jsp"
			window.location.href = "page/rental.jsp";
		}
	}
</script>
</html>