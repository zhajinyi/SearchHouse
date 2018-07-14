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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜趣房欢迎您</title>
<link href="<%=basePath%>/cssY/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=basePath%>/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="<%=basePath%>/js/scripts.js"></script>
<!--<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>-->
<script type="text/javascript" src="<%=basePath%>/js/script.js"></script>
<link href="../cssY/styles.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/cssY/style1.css">
<!--//menu-->
<!--theme-style-->
<link href="<%=basePath%>/cssY/style.css" rel="stylesheet"
	type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<style>
.ZITI2 {
	font-size: 30px;
	color: red;
	text-align: center;
	display: inline;
	margin-top: -10%;
	margin-left: 40%;
}

.BJTP {
	width: 80%;
	height: 80%;
}

#footer1 {
	background: #141414;
	position: absolute;
	top: 3430px;
	width: 100%;
}

#BJsingle {
	background: #F7F7F7;
	padding: 0em;
	height: 210px;
}

.BJXX {
	width: 100%;
}
</style>
</head>
<body>

	<div class="header">
		<div class="container">
			<!--logo-->
			<div class="logo">
				<h1>
					<a href="<%=basePath%>/index">搜趣房</a>
				</h1>
			</div>
			<!--//logo-->
			<div class="top-nav">
				<ul class="right-icons">
					<li><a href="login.jsp">登录</a></li>
				</ul>
				<div class="clearfix"></div>
				<link href="<%=basePath%>/cssY/popuo-box.css" rel="stylesheet"
					type="text/css" media="all" />
				<script src="<%=basePath%>/js/jquery.magnific-popup.js"
					type="text/javascript"></script>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class=" banner-buying">
		<div class="slider">
			<div class="banner1">
				<div class="caption">
					<div id="center1">
						<img id="img-logle" src="<%=basePath%>/images/LOGLE.png"> <input
							type="text" class="search11" placeholder="请输入要查询的需求">
						<button class="button11">
							<a href="houselist.jsp">搜索</a>
						</button>
						<button class="button11" id="fabu">
							<a href="houselist.jsp">免费发布</a>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!---->
	<div class="single">
		<div class="container" id="BJSX">

			<div class="single-buy" id="BJsingle">
				<!--<div class="col-sm-3 check-top-single">-->
				<!--<div class="single-bottom">-->
				<div id="shaixuan">
					<ul class="select">
						<li class="select-list">
							<dl id="select1">
								<dt>服务区域：</dt>
								<dd class="select-all selected">
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
							<dl id="select2">
								<dt>服务项目：</dt>
								<dd class="select-all selected">
									<a>不限</a>
								</dd>
								<dd>
									<a>居民搬家</a>
								</dd>
								<dd>
									<a>公司搬家</a>
								</dd>
								<dd>
									<a>小型搬家</a>
								</dd>
								<dd>
									<a>长途搬家搬运</a>
								</dd>
								<dd>
									<a>空调移机</a>
								</dd>
								<dd>
									<a>设备搬迁</a>
								</dd>
							</dl>
						</li>
						<li class="select-result">
							<dl>
								<dd class="select-no"></dd>
							</dl>
						</li>
					</ul>
				</div>
				<!--</div>-->
				<!--</div>-->
				<div class="clearfix"></div>
			</div>
		</div>

		<!---->
		<div class="container">
			<div class="buy-single">
				<h3>苏州搬家</h3>
				<div class="box-sin">
					<div class="col-md-9 single-box">
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="box-col BJXX">
							<div class=" col-sm-7 left-side ">
								<a href="houselist.html"> <img class="BJTP"
									class="img-responsive" src="<%=basePath%>/images/BJ1.jpg"
									alt=""></a>
							</div>
							<div class="  col-sm-5 middle-side">
								<h4>苏州搬家搬场,单位搬迁,居民搬家,长短途搬家优惠中</h4>
								<br>
								<br>
								<p class="pp">想搬家请找我。我们以较优质的服务，较低的价格。</p>
								&nbsp;<br>
								<p class="pp">做到让你满意，让你放心，让你开心。</p>
								&nbsp;
								<div class="ZITI2">联系商家</div>
								<br>
								<br>
								<p class="pp">洪福搬家</p>

							</div>
							<div class="clearfix"></div>
						</div>

						<div class="clearfix"></div>


						<div class="nav-page">
							<nav>
							<ul class="pagination">
								<li class="disabled"><a href="#" aria-label="Previous"><span
										aria-hidden="true">«</span></a></li>
								<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"><span
										aria-hidden="true">»</span></a></li>
							</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!---->
	<!--footer-->
	<div id="footer1">

		<div class="footer-bottom">
			<div class="container" align="center">
				<h2>
					<a href="<%=basePath%>/index">搜趣房</a>
				</h2>
			</div>
		</div>
	</div>
	<!--//footer-->
</body>
</html>