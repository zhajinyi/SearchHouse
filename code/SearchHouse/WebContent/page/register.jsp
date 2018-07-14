<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
<link href="<%=basePath%>/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/scripts.js"></script>
<link href="<%=basePath%>/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script>
	function getvalue() {
		var xmlhttp = new XMLHttpRequest();
		var namevalue = $("#userId").val();
		xmlhttp.open("GET",
				"${pageContext.request.contextPath }/getUname?userId="
						+ namevalue, true);
		xmlhttp.send();

		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				if (xmlhttp.responseText == 1) {
					$("#spuname").text("");
				} else {
					$("#spuname").text("*该用户名已被注册！");
				}
			}
		}
	}

	function getpwd() {
		var pwdvalue = $("#upwd").val();
		var pwdvalue1 = $("#upwd1").val();
		if (pwdvalue != pwdvalue1) {
			$("#sppwd").text("两次密码输入不一致，请重新输入");
		} else {
			$("#sppwd").text("");
		}
	}
	function findphone() {
		var xmlhttp = new XMLHttpRequest();
		var phonevalue = $("#phoneNumber").val();
		xmlhttp.open("POST",
				"${pageContext.request.contextPath }/sendPhone?phoneNumber="
						+ phonevalue, true);
		xmlhttp.send();
	}
	function getcode() {
		var xmlhttp = new XMLHttpRequest();
		var codevalue = $("#code").val();
		xmlhttp.open("POST", "${pageContext.request.contextPath }/code?code="
				+ codevalue, true);
		xmlhttp.send();

		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				if (xmlhttp.responseText == 1) {
					$("#spcode").text("");
				} else {
					$("#spcode").text("*验证码错误！");
				}
			}
		}
	}
	/* function getcode1() {
		var xmlhttp = new XMLHttpRequest();
		var codevalue = $("#code").val();
		xmlhttp.open("POST","${pageContext.request.contextPath }/emialcode?code="+ codevalue, true);
		xmlhttp.send();

		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				if (xmlhttp.responseText == 1) {
					$("#spcode").text("");
				} else {
					$("#spcode").text("*验证码错误！");
				}
			}
		}
	} */
</script>
</head>
<body>
	<div class="header">
		<div class="container">
			<div class="logo">
				<h1>
					<a href="<%=basePath%>/index">搜趣房</a>
				</h1>
			</div>
			<div class="top-nav">
				<ul class="right-icons">
					<li><a href="login.jsp"><i
							class="glyphicon glyphicon-user"> </i>登陆</a></li>
					<li><a href="index.jsp"> 首页</a></li>
					<li><a href="login.html"> 个人中心</a></li>
					<li><a href="login.html">帮助中心</a></li>
				</ul>
				<script src="<%=basePath%>/js/jquery.magnific-popup.js"
					type="text/javascript"></script>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class=" banner-buying"></div>
	<div class="login-right">
		<div class="container">
			<h3>注册</h3>
			<div class="login-top">
				<div class="form-info">
					<!--   action="<%=basePath%>/addUserInfo" -->
					<form action="${pageContext.request.contextPath}/addUserInfo">
						<input type="text" name="userId" onchange="getvalue()"
							placeholder="用户名" required=""> <span id="spuname"></span>
						<div class="form-info-form1">
							<%-- <form action="<%=basePath%>/sendPhone" method="post"> --%>
							<input type="text" id="phoneNumber" name="phoneNumber"
								placeholder="手机号" required="">
							<button id="form1 button" onclick="findphone()">获取验证码</button>
							<!-- </form> -->
						</div>
						<input type="text" name="code" id="code" onchange="getcode()"
							placeholder="验证码" required=""> <span id="spcode"></span>

						<input type="text" name="userMail" placeholder="邮箱" required="">
						<input type="password" id="upwd" name="userPassword"
							placeholder="密码" required="">
						<!-- value="${user.upwd} value="${user.upwd}""-->
						<input type="password" id="upwd1" placeholder="确认密码" required=""
							onchange="getpwd()"> <span id="sppwd">
							<!-- style="color:red"-->
						</span><br>
						<label class="hvr-sweep-to-right"> <input type="submit"
							value="注册">
						</label>
					</form>
					<!-- </form> -->
					<p>
						已有账号? <a href="<%=basePath%>/page/login.jsp">登陆</a>
					</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>