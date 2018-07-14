<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link href="${pageContext.request.contextPath}/css/style.css"
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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/src/bootstrapDatepickr-1.0.0.css">
<script src="${pageContext.request.contextPath}/src/jquery-1.7.2.min.js"></script>
<!--<script src="src/bootstrap.min.js"></script>-->
<script
	src="${pageContext.request.contextPath}/dist/bootstrapDatepickr-1.0.0.min.js"></script>
<script>
	$(document).ready(function() {
		$("#calendar").bootstrapDatepickr();
		$("#calendar1").bootstrapDatepickr({
			date_format : "d-m-Y"
		});
		$("#calendar2").bootstrapDatepickr({
			date_format : "l, do F Y"
		});
	});
</script>

</head>
<body>
	<div class="header">
		<div class="container">
			<!--logo-->
			<div class="logo">
				<h1>
					<a href="index.jsp">搜趣房</a>
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
				<!--<div class="nav-icon">
				<div class="hero fa-navicon fa-2x nav_slide_button" id="hero">
					<a href="#"><i class="glyphicon glyphicon-menu-hamburger"></i> </a>
				</div>
			</div>-->
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class=" banner-buying">
		<div class=" container">
			<!--<h3><span>Cont</span>act</h3> -->
		</div>
	</div>
	<!--//header-->
	<!--contact-->
	<div class="contact">
		<div class="container">
			<h3>预约看房</h3>
			<div class="contact-top">
				<div class="col-md-6 contact-top1">
					<h4>房屋信息</h4>
					<p class="text-contact">${house.detailedIntro}</p>
					<div class="contact-address">
						<div class="col-md-6 contact-address1">
							<h5>房源地址</h5>
							<p>${house.houseAddress}</p>
							<p>${house.locationName}</p>
							<p>${house.houseName}</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="contact-address">
						<div class="col-md-6 contact-address1">
							<h5>房源类型</h5>
							<p>${house.houseUnit}</p>
							<p>急需出售</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-6 contact-right">
					<form action="${pageContext.request.contextPath}/addOrder"
						method="get">
						<input type="hidden" name="userId" value="${userinfo.userId}">
						<input type="hidden" name="houseId" value="${house.houseId}">
						姓名：<input type="text" placeholder="请填写您的姓名" name="newName"
							value="${userinfo.userName}"> 联系电话：<input type="text"
							placeholder="您的联系电话" name="newDel"
							value="${userinfo.phoneNumber}"> 邮箱：<input type="text"
							placeholder="您的邮箱地址" name="newMail" value="${userinfo.userMail}">
						看房时间：<br> <input type="date" name="seeDate"
							placeholder="您的看房日期" style="height: 30px; border: gray;">
						<input type="text" name="time" placeholder="您的看房时间"
							style="height: 30px; border: gray;"><br> 备注：
						<textarea placeholder="备注信息" name="newInfo" requried=""></textarea>
						<label class="hvr-sweep-to-right"> <input type="submit"
							value="提交">
						</label>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="container">
			<!-- 底部 -->
		</div>
	</div>

</body>
</html>