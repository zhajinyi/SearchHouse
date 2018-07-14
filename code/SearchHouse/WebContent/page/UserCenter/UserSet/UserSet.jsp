<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>账号设置</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>

<script
	src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet"
	href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script
	src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


<script src="<%=basePath%>/page/UserCenter/js/scripts.js"></script>
<link href="<%=basePath%>/page/UserCenter/css/styles.css"
	rel="stylesheet">
<link href="<%=basePath%>/page/UserCenter/css/style.css"
	rel="stylesheet" type="text/css" media="all" />

<style>
.panel-group {
	width: 120px;
	margin-left: 7%;
	margin-top: 2%;
}

.left-a {
	text-decoration: none;
}

.left-a:hover {
	text-decoration: none;
	color: #e96c1f;
	font-size: 20px;
}

.panel-heading {
	text-align: center;
}

#header {
	font-size: 26px;
	border-bottom: solid 1px #27da93;
	width: 150px;
	text-align: center;
	margin-top: 3%;
}

#header:hover {
	cursor: pointer;
}

#header-a:hover {
	text-decoration: none;
	color: #e96c1f;
}

h3 {
	display: inline;
	font-size: 16px;
	text-align: center;
}

.panel-group {
	float: left;
	margin-left: 15px;
	margin-top: 20px;
}

.col-md-2 {
	margin-left: 65px;
	margin-top: 20px;
}

#ContainerFrame {
	margin-left: 60px;
}

#span-right-icons:hover {
	cursor: pointer;
}

#btn-logout {
	background: ##27da93;
}
</style>
<script>
	$(function() {
		$("#btn-logout")
				.click(
						function() {
							window.location = "${pageContext.request.contextPath}/closeSession?userId=${user.userId}";
						})

	})

	$(function() {
		var href = window.location.href; //获取当前页面的URL

		var a = href.substring(href.lastIndexOf('?')); //截取问号后面的内容
		if (a == "?i=0") {
			$("#ContainerFrame").attr("src", "<%=basePath%>/initial?userId=${user.userId}");//设置iframe的src
		}
	});
</script>
</head>
<body>
	<!--水平导航栏-->
	<div class="header">
		<div class="container">
			<div class="logo">
				<h1>
					<a href="<%=basePath%>/index">搜趣房</a>
				</h1>
			</div>



			<div class="top-nav">
				<ul class="right-icons">
	<li><span><a href="<%=basePath%>/page/UserCenter/UserInfo/UserCenter.jsp"><i class="glyphicon glyphicon-phone"> </i><c:choose><c:when test="${empty user.userName}">${user.userId}</c:when><c:otherwise>${user.userName }</c:otherwise></c:choose></a></span></li>	
	<li id="userset"><span><a href="<%=basePath%>/page/UserCenter/UserSet/UserSet.jsp"><i class="glyphicon glyphicon-cog"></i>账户设置</a></span></li>			
	<li><span id="span-right-icons"><a data-toggle="modal"
							data-target="#myModal-usercenter"><i
								class="glyphicon glyphicon-log-out"></i>注销</a></span></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="col-md-2">
		<!--左侧导航栏标题-->
		<div id="header">
			<a id="header-a"
				href="<%=basePath%>/page/UserCenter/UserSet/UserSet.jsp">账号设置</a>
		</div>

		<!--左侧导航栏-->
		<div class="panel-group" id="accordion">

			<div class="panel panel-default">
				<div class="panel-heading">

					<a class="left-a" target="iframe1"
						href="<%=basePath%>/page/UserCenter/UserSet/UserData.jsp">
						个人资料 </a>

				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<a class="left-a" target="iframe1"
						href="<%=basePath%>/page/UserCenter/UserSet/UserBind.jsp">
						账号绑定 </a>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">

					<a class="left-a" target="iframe1"
						href="<%=basePath%>/initial?userId=${user.userId}"> 认证管理 </a>

				</div>


			</div>

			<div class="panel panel-default">
				<div class="panel-heading">

					<a class="left-a"
						href="<%=basePath%>/page/UserCenter/UserSet/PwdSet.jsp"
						target="iframe1"> <span class="leftspan">密码设置</span>
					</a>

				</div>
			</div>

		</div>
	</div>


	<!--右侧内容-->
	<div id="RightMenu">
		<iframe id="ContainerFrame" name="iframe1"
			style="margin-top: 10px; margin-left: 5%"
			src="<%=basePath%>/page/UserCenter/UserSet/UserData.jsp"
			scrolling="no" frameborder="0" width="815px" height="2000px"></iframe>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal-usercenter" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">注销账户</h4>
				</div>
				<div class="modal-body">是否确认注销此账户？</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="btn-logout">注销</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>