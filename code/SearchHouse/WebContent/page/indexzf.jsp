<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>payment</title>
<link href="${pageContext.request.contextPath }/cssX/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath }/cssX/style.css"
	rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<%-- <form action="${pageContext.request.contextPath }/payServlet" method="post">
		商品订单号：<input type="text" name="p2_Order"><br/>
		支付金额：<input type="text" name="p3_Amt" value="${price }"><br/>
		选择银行：<br/>
		中国农业银行<input type="radio" name="pd_FrpId" value="ABC-NET-B2C">
		建设银行<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"><br/>
		<input type="submit" value="支付">
	</form> --%>


	<div class="header">
		<div class="container">
			<!--logo-->
			<div class="logo">
				<h1>
					<a href="index.html">搜趣房</a>
				</h1>
			</div>

			<!--//logo-->
			<div class="top-nav">
				<ul class="right-icons">
					<li><a href="login.html"><i
							class="glyphicon glyphicon-user"> </i>用户名</a></li>
				</ul>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//-->
	<div class=" banner-buying"></div>
	<!--//header-->
	<div class="pay">
		<form action="${pageContext.request.contextPath }/payServlet"
			method="post">

			<p class="pay1">您的订单已提交，请选择付款方式。</p>

<!-- 			<p class="pay2">商品订单号：<script type="text/javascript" name="p2_Order" >document.write(Math.random()*100000000000000000)</script></p>
 -->			<p class="pay2">商品订单号：<input type="hidden" name="p2_Order" value="101010"></p>
			<!-- <input type="text" name="p2_Order"><br/> -->
			<h3 class="pay2">
				付款金额:<input type="text" name="p3_Amt"><br />
			</h3>
			<div class="pay3">
				<div class="radio4">
					<div class="radio44">
						<input type="radio" name="pd_FrpId" value="ABC-NET-B2C">
					</div>
					<img class="imgpay"
						src="${pageContext.request.contextPath }/imagess/18.jpg">
				</div>
				<div class="radio5">
					<div class="radio55">
						<input type="radio" name="pd_FrpId" value="CCB-NET-B2C" checked>
					</div>
					<img class="imgpay"
						src="${pageContext.request.contextPath }/imagess/19.png">
				</div>
			</div>
			<div class="zhifu">
				<input type="submit" value="支付" class="fukuang">
			</div>
		</form>
	</div>

	<div class="footer">
		<div class="container"></div>
		<div class="footer-bottom">
			<div class="container">
				<div class="col-md-4 footer-logo">
					<h2>
						<a href="index.html">搜趣房</a>
					</h2>
				</div>
				<div class="col-md-8 footer-class"></div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</body>
</html>