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
<title>登陆</title>
<link href="<%=basePath%>/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="<%=basePath%>/js/jquery.min.js"></script>
<link href="<%=basePath%>/css/styles.css" rel="stylesheet">
<link href="<%=basePath%>/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<div class="header">
		<div class="container">
			<div class="logo">
				<h1>
					<a href="<%=basePath%>/index">搜趣房</a>
				</h1>
			</div>
		</div>
	</div>
	<!--//-->
	<div class=" banner-buying"></div>

	<div class="login-right">
		<div class="container">
			<h3>登陆</h3>
			<div class="login-top">
				<div class="form-info">
					<form action="<%=basePath%>/getUserInfo">
						<input type="text" name="userId" placeholder="用户名" required="">
						<input type="password" name="userPassword" placeholder="密码"
							required=""> <label class="hvr-sweep-to-right">
							<input type="submit" value="登陆">
						</label>
					</form>
				</div>
				<div class="create">
					<h4>新用户?</h4>
					<%-- <a class="hvr-sweep-to-right"
						href="<%=basePath%>/page/register.jsp">找回密码？</a>  --%><a
						class="hvr-sweep-to-right" href="<%=basePath%>/page/register.jsp">创建一个用户</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>