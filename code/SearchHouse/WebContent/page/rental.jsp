<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>rental</title>
<link href="${pageContext.request.contextPath }/cssX/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="${pageContext.request.contextPath }/js/scripts.js"></script>
<link href="${pageContext.request.contextPath }/cssX/styles.css"
	rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link href="${pageContext.request.contextPath }/cssX/style.css"
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
<script>
	function check() {
		if ($("[name='timeStart']").val() == "") {
			$("#us").text("请选择起租日期");
			return false;
		} else {
			$("#us").text("");
		}

		if ($("[name='timeEnd']").val() == "") {
			$("#mm").text("请选择退租日期");
			return false;
		} else {
			$("#mm").text("");
		}
		if ($("[name='realName']").val() == "") {
			$("#yx").text("请输入姓名");
			return false;
		} else {
			$("#yx").text("");
		}
		if ($("[name='inPhone']").val() == "") {
			$("#sf").text("请填写电话号码")
			return false;
		} else {
			var phone = $("[name='inPhone']").val();
			if (!(/^1[34578]\d{9}$/.test(phone))) {
				alert("手机号码有误，请重填");
				return false;
			}
		}

		return true;
	}
</script>

</head>
<body>
	<!--header-->


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
					<li><a href="login.jsp"><i
							class="glyphicon glyphicon-user"></i>用户名</a></li>
				</ul>
				<div class="clearfix"></div>
				<!---pop-up-box---->

				<link href="${pageContext.request.contextPath }/cssX/popuo-box.css"
					rel="stylesheet" type="text/css" media="all" />
				<script
					src="${pageContext.request.contextPath }/js/jquery.magnific-popup.js"
					type="text/javascript"></script>
				<!---//pop-up-box---->
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//-->
	<div class=" banner-buying"></div>
	<!--//header-->
	<!--contact-->
	<div class="contact"
		style="background: url(${pageContext.request.contextPath }/imagess/16.jpeg)">
		<div class="container">
			<h3>我要租房</h3>
			<div class="contact-top">
				<div class="col-md-6 contact-top1">

					<!-- 在点击房屋的时候 将房屋对象存到session 域中    名字为  session。setAttribute  ("house",house) -->



					<h4>${house.houseName }</h4>
					<div class="query">
						<div class=" buying-top">
							<div class="flexslider">
								<ul class="slides">
									<li
										data-thumb="${pageContext.request.contextPath }/images/ss.jpg">
										<img src="${pageContext.request.contextPath }/images/ss.jpg" />
									</li>
									<li
										data-thumb="${pageContext.request.contextPath }/images/ss1.jpg">
										<img src="${pageContext.request.contextPath }/images/ss1.jpg" />
									</li>
									<li
										data-thumb="${pageContext.request.contextPath }/images/ss2.jpg">
										<img src="${pageContext.request.contextPath }/images/ss2.jpg" />
									</li>
									<li
										data-thumb="${pageContext.request.contextPath }/images/ss3.jpg">
										<img src="${pageContext.request.contextPath }/images/ss3.jpg" />
									</li>
								</ul>
							</div>
							<!-- FlexSlider -->
							<script defer
								src="${pageContext.request.contextPath }/js/jquery.flexslider.js"></script>
							<link rel="stylesheet"
								href="${pageContext.request.contextPath }/cssX/flexslider.css"
								type="text/css" media="screen" />

							<script>
								// Can also be used with $(document).ready()
								$(window).load(function() {
									$('.flexslider').flexslider({
										animation : "slide",
										controlNav : "thumbnails"
									});
								});
							</script>
						</div>
					</div>

				</div>
				<div class="col-md-6 contact-right">

					<form action="${pageContext.request.contextPath }/addIndent"
						onsubmit="return check()">

						<p class="query1">
							<span class="query2">房源地址:</span>${house.houseAddress }<!--例： 苏州百年职业技术学院 -->
							<br> <span class="query2">房源类型:</span>${house.houseUnit}&nbsp;${house.houseArea}&nbsp;${house.fitment.fitmentName }
							<!-- 1室1厅1卫 40平 精装修 -->
							<br> <span class="query2">租金及要求:</span>${house.housePrice}&nbsp;${house.pay.payName}<!-- 1450元/月  押一付三 -->
							<br>
						</p>
						起租日期:<input class="riqi" type="date" name="timeStart" /><span
							id="us"></span><br> 退租日期:<input class="riqi" type="date"
							name="timeEnd" /><span id="mm"></span><br> <input
							type="text" placeholder="租房人姓名" name="realName"
							style="width: 250px"><span id="yx"></span><br> <input
							type="text" placeholder="联系电话" name="inPhone"
							style="width: 250px"><span id="sf"></span><br> <label
							class="hvr-sweep-to-right"> <input type="submit"
							value="确认">
						</label>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//contact-->
	<!--footer-->
	<div class="footer">
		<div class="footer-bottom">
			<div class="container">
				<div class="col-md-4 footer-logo">
					<h2>
						<a href="index.jsp">搜趣房</a>
					</h2>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
</body>
</html>