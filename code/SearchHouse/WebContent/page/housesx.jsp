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
<%-- <link href="<%=basePath%>/cssY/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" /> --%>
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/scripts.js"></script>
<%-- <link href="<%=basePath%>/cssY/styles.css" rel="stylesheet"> --%>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/cssY/style1.css">
<link href="<%=basePath%>/cssY/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="<%=basePath%>/cssY/popuo-box.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="<%=basePath%>/js/jquery.magnific-popup.js"
	type="text/javascript"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.3.1.js"></script>

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

<style type="text/css">
#TC1 {
	margin-top: 10%;
	margin-left: 75%;
	border: 1px solid white;
	height: auto;
	width: 300px;
	display: none;
	position: absolute;
	top: 600px;
	z-index: 9999;
	background-color: white;
}

#YC {
	width: 19%;
	text-align: center;
	border: 1px solid white;
	background-color: gray;
	display: inline-block;
}

#DB {
	width: 78%;
	text-align: center;
	border: 1px solid white;
	background-color: gainsboro;
	display: inline-block;
}

#XX1 {
	text-align: center;
}

#FY1 {
	width: 100%;
	height: auto;
	border: 1px solid black;
}

#KS1 {
	text-align: center;
	width: 48%;
	display: inline-block;
}

#QK1 {
	text-align: center;
	display: inline-block;
	width: 48%;
}

#YC:hover {
	cursor: pointer;
}

.DBa {
	text-decoration: none;
}

#QK1:hover {
	cursor: pointer;
	border: 1px solid black;
	font-size: 15px;
}

#KS1:hover {
	cursor: pointer;
	border: 1px solid black;
	font-size: 15px;
}

#DBtbl {
	width: 90%;
	height: auto;
	margin: 110px 0 0 70px;
}

#FHlist {
	width: 100%;
	height: 50px;
	line-height: 50px;
	background-color: whitesmoke;
}

#DBtbl_main {
	width: 100%;
	height: auto;
	background-color: whitesmoke;
	margin-top: 1%;
}

#tblDB {
	width: 100%;
}

.DBxx {
	text-align: center;
	line-height: 100%;
}

.DBtr {
	width: 100%;
	height: 50px;
	text-align: center;
}

.deleteDB {
	text-align: center;
	line-height: 100%;
}

.closeDB {
	margin-left: 15%;
	display: inline;
}

#DBliebiao {
	width: 40px;
	height: 25px;
}

#center1 {
	margin-left: -150px;
}

.wrap {
	margin: 0 0 0 5%;
	text-align: center;
	width: 100px;
	height: 30px;
	border: 1px solid gainsboro;
	line-height: 30px;
	display: inline-block;
}

.wrap:hover {
	border: 1px solid yellowgreen;
	background-color: whitesmoke;
	cursor: pointer;
}
</style>
<!-- 加入对比的点击事件 -->
<script language="JavaScript" type="text/JavaScript">
		var count=1;
		function toggle(targetid,houseId){
			if (document.getElementById){
				target=document.getElementById(targetid);
				if (target.style.display=="none"){
					target.style.display="block";
				}else {
					target.style.display="block";
				}
			}
			
			if(count<=4){
			 //xmlhttp对象
	        var xmlhttp;
			if (window.XMLHttpRequest) {
				//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
				xmlhttp = new XMLHttpRequest();
			} else {
				// IE6, IE5 浏览器执行代码
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					
					var compare = JSON.parse(xmlhttp.responseText);
					
						$("#FY1").append("<div style='width=90%;height=auto;margin-left:5%;text-align:left'><a href='${pageContext.request.contextPath}/getHouseById?houseId="+compare.house.houseId+"'><input type='hidden' name='houseId' style='width:10px' value='"+compare.house.houseId+"'/>"+count+"、"+compare.house.houseName+"&nbsp;"+compare.house.houseArea+"㎡&nbsp;"+compare.house.housePrice+"元/月</a></div>");
						count++;
				}
			}
			xmlhttp.open("GET", "${pageContext.request.contextPath}/addCompare?houseId="+houseId, true);
			xmlhttp.send();
			}else{
				alert("最多可选4项");
			}
	    }
		
		function toggle1(targetid){
			if (document.getElementById){
				target=document.getElementById(targetid);
				if (target.style.display=="block"){
					target.style.display="none";
				}
			}
		}
		function kaishiDB(){
			var index = $("#FY1").children("div").length ;
			if(index<2){
				alert("对比项不能少于两条");
			}else{
				window.location="${pageContext.request.contextPath}/duiBi";
			}
		}
		function qingkong1() {
			$("#FY1").empty();
		}
	</script>

<style type="text/css">
/* 标题栏的颜色改变 */
/* 	.header{
				
				background-color:#707070;
			}
     */
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

.seled {
	font-size: 18px;
	background-color: #FF9966;
}
</style>

<script type="text/javascript">
	 $(function () {
	       $("#filter dt+dd a").attr("class", "seled"); 
	        //为filter下的所有a标签添加单击事件
	        $("#filter a").click(function () {
	           
	        	$(this).parents("dl").children("dd").each(function () {
					//下面三种方式效果相同（第三种写法的内部就是调用了find()函数，所以，第二、三种方法是等价的。）
	                //$(this).children("div").children("a").removeClass("seled");
					//$(this).find("a").removeClass("seled");
					$('a',this).removeClass("seled");
	            });

	            $(this).attr("class", "seled");

	
	        	var xmlhttp;
	    		if (window.XMLHttpRequest) {
	    			xmlhttp = new XMLHttpRequest();
	    		} else {
	    			// IE6, IE5 浏览器执行代码
	    			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	    		}
	    		    xmlhttp.onreadystatechange = function() {

	    			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
	    				$("#bianliresult").empty();
	    				var houses = JSON.parse(xmlhttp.responseText);
	    				if(houses!=null&&houses!=""){
	    					for ( var x in houses) {
		    					var house = houses[x];
		    						$("#bianliresult").append(
		    								"<div class='col-lg-4 col-sm-6 layout-item-wrap'>"+
		    		                        "<a class='clearfix zoom'>"+    
		    		                        	"<img data-action='zoom' src='${pageContext.request.contextPath}/imagess/"+ house.photos[0] + " ' alt='Property Image' style='height:250px'>"+
		    		                        "</a>"+
		    		                    "<div>"+
		    		                        "<header>"+
		    		                             "<div>"+
		    		                                "<h6 class='entry-title' style='width: 100%;height: 20px;'><a href='${pageContext.request.contextPath}/getHouseById?houseId=" + house.houseId +" '> " + house.houseName + "</a></h6>"+
		    		                                "<span class='property-location'><i class='fa fa-map-marker'></i> " + house.locationName + " </span> "+
		    		                            "</div>"+
		    		                            "<button class='btn btn-default btn-price pull-right btn-3d' data-hover=' ￥" + house.housePrice +" '  style=' padding-bottom:0px ;'><strong>￥ "+ house.housePrice + "</strong>"+
		    		                            "</button>"+
		    		                        "</header>"+
		    		                        "<div class='property-meta clearfix'>"+
		    		                            "<span>"+"<i class='fa fa-arrows-alt'></i>" + house.houseArea + "㎡  &nbsp;" +  house.userInfo.qualityRating +        
		    		                             "</span>"+ 
		    		                           "<div class='wrap' onclick=' toggle('TC1', "+ house.houseId +")'>+加入对比</div>"+
		    		                        "</div>"+
		    		                    "</div>"+
		    		            "</div>"
		    		            )
	    					}
	    				}else{
		    						$("#bianliresult").append(
		    								"该记录不存在，请重新选择条件"
		    							)
	    				}
	    			}
	    		};
	    		  var result=RetSelecteds();
	    		  xmlhttp.open("GET","${pageContext.request.contextPath }/getall?keyName="+result,true);  
	        	xmlhttp.send();
	        });   
	    });

	    function RetSelecteds() {
	        var result = "";
	        $("#filter a[class='seled']").each(function () {
	        	result += $(this).html()+","; 
	        });
	        return result;
	    }
	    
	</script>
</head>
<body class="listing-template">
	<!-- 房源对比的弹窗 -->
	<div id="TC1">
		<div id="YC" onclick="toggle1('TC1')">隐藏</div>
		<div id="DB">房源对比</div>
		<div id="XX1">
			<p>您浏览过的房源(最多勾选4条)</p>
			<div id="FY1"></div>
		</div>
		<div id="KS1">
			<div class="DBa" id="duibi" onclick="kaishiDB()">开始对比</div>
		</div>
		<div id="QK1">
			<div class="DBa" id="qingkong" onclick="qingkong1()">全部清空</div>
		</div>
	</div>
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

	<div class="container">

		<div class="single">
			<div id="shaixuan">
				<ul class="select" id="filter">
					<li class="select-list">
						<dl id="select">
							<dt>区域：</dt>
							<dd>
								<a>不限</a>
							</dd>
							<dd>
								<a>沧浪</a>
							</dd>
							<dd>
								<a>相城</a>
							</dd>
							<dd>
								<a>平江</a>
							</dd>
							<dd>
								<a>金闾</a>
							</dd>
							<dd>
								<a>吴中</a>
							</dd>
							<dd>
								<a>工业园</a>
							</dd>
							<dd>
								<a>昆山</a>
							</dd>
							<dd>
								<a>常熟</a>
							</dd>
							<dd>
								<a>张家港</a>
							</dd>
							<dd>
								<a>太仓</a>
							</dd>
							<dd>
								<a>高新区</a>
							</dd>
							<dd>
								<a>吴江</a>
							</dd>
						</dl>
					</li>
					<li class="select-list">
						<dl id="select">
							<dt>租金：</dt>
							<dd>
								<a>不限</a>
							</dd>
							<dd>
								<a>500元以下</a>
							</dd>
							<dd>
								<a>500-1000元</a>
							</dd>
							<dd>
								<a>1000-1500元</a>
							</dd>
							<dd>
								<a>1500-2000元</a>
							</dd>
							<dd>
								<a>2000-3000元</a>
							</dd>
							<dd>
								<a>3000-4500元</a>
							</dd>
							<dd>
								<a>4500元以上</a>
							</dd>
						</dl>
					</li>
					<li class="select-list">
						<dl id="select">
							<dt>厅室：</dt>
							<dd>
								<a>不限</a>
							</dd>
							<dd>
								<a>一室</a>
							</dd>
							<dd>
								<a>二室</a>
							</dd>
							<dd>
								<a>三室</a>
							</dd>
							<dd>
								<a>四室</a>
							</dd>
							<dd>
								<a>四室以上</a>
							</dd>
						</dl>
					</li>
					<li class="select-list">
						<dl id="select">
							<dt>装修：</dt>
							<dd>
								<a>不限</a>
							</dd>
							<dd>
								<a>毛坯</a>
							</dd>
							<dd>
								<a>简单装修</a>
							</dd>
							<dd>
								<a>中等装修</a>
							</dd>
							<dd>
								<a>精装修</a>
							</dd>
							<dd>
								<a>豪华装修</a>
							</dd>
						</dl>
					</li>
				</ul>
			</div>


		</div>
	</div>

	<section id="property-listing"> <header
		class="section-header text-center">
	<div class="container">
		<h2 class="pull-left" style="color: #FFCC99">房源列表</h2>
		<h4 class="pull-left" id="shouye">
			<a href="${pageContext.request.contextPath}/index">首页</a>
		</h4>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<h4 class="pull-left" id="quanbu">
			<a href="${pageContext.request.contextPath}/houseall?pageNo=1">全部房源</a>
		</h4>
		<h4 class="pull-left" id="pingpai">
			<a href="${pageContext.request.contextPath}/houseType?pageNo=1">品牌公寓</a>
		</h4>
	</div>
	</header>
	<div class="container section-layout">
		<div class="row" id="bianliresult">
			<c:forEach items="${houses}" var="houseType">
				<div class="col-lg-4 col-sm-6 layout-item-wrap"
					style="margin-top: 1%">
					<a class="clearfix zoom" href="single-property.html"> <img
						data-action="zoom"
						src="<%=basePath%>/imagess/${houseType.photos[0] }"
						alt="Property Image" style="height: 250px">
					</a>
					<div class="property-contents clearfix">
						<header>
						<div class="pull-left">
							<h6 class="entry-title">
								<a
									href="<%=basePath%>/getHouseById?houseId=${houseType.houseId}">${houseType.houseName}</a>
							</h6>
							<span class="property-location"><i
								class="fa fa-map-marker"></i> ${houseType.locationName}</span>
						</div>
						<button class="btn btn-default btn-price pull-right btn-3d"
							data-hover="￥${houseType.housePrice}" style="margin-top: -8%">
							<strong>￥${houseType.housePrice}</strong>
						</button>
						</header>
						<div class="property-meta clearfix">
							<span><i class="fa fa-arrows-alt"></i>${houseType.houseArea}㎡</span>
							<div class="wrap" onclick="toggle('TC1',${houseType.houseId})">+加入对比</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	</section>
	<footer id="footer" style="position:static;">
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
</html>