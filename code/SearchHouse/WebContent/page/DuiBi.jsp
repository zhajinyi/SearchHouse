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
<script src="../js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="<%=basePath%>/js/scripts.js"></script>
<!--<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>-->
<script type="text/javascript" src="<%=basePath%>/js/script.js"></script>
<link href="<%=basePath%>/cssY/styles.css" rel="stylesheet">
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

<script type="text/javascript">
		function qingkong(){
			
		})
	</script>

<style type="text/css">
#footer11 {
	background: #141414;
	position: absolute;
	top: 800px;
	width: 100%;
}

a {text-decoration none;
	
}

td {
	width: 230px;
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
					<!--<li><span ><i class="glyphicon glyphicon-phone"> </i>+1384 757 546</span></li>-->
					<li><a href="<%=basePath%>/page/login.jsp"><i
							class="glyphicon glyphicon-user"> </i>登录</a></li>
				</ul>
				<div class="clearfix"></div>
				<!---pop-up-box---->

				<link href="<%=basePath%>/cssY/popuo-box.css" rel="stylesheet"
					type="text/css" media="all" />
				<script src="<%=basePath%>/js/jquery.magnific-popup.js"
					type="text/javascript"></script>
			</div>
			<script>
            $(document).ready(function() {
                $('.popup-with-zoom-anim').magnificPopup({
                    type: 'inline',
                    fixedContentPos: false,
                    fixedBgPos: true,
                    overflowY: 'auto',
                    closeBtnInside: true,
                    preloader: false,
                    midClick: true,
                    removalDelay: 300,
                    mainClass: 'my-mfp-zoom-in'
                });

            });
        </script>


		</div>
		<div class="clearfix"></div>
	</div>
	<!--<div class=" banner-buying">-->
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
	<!--</div>-->

	<div id="DBtbl">
		<div id="FHlist">
			<a href="<%=basePath%>/houseall?pageNo=1" style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;返回房源列表</a>
		</div>
		<div id="DBtbl_main">
			<table id="tblDB" border="1px solid antiquewhite">
				<tr class="DBtr">
					<td class="DBxx" rowspan="9">房屋信息</td>
					<td class="DBxx">房源名称</td>
					<c:choose>
						<c:when test="${compares.size()==2 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseName }</td>
							</c:forEach>
							<td></td>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==3 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseName }</td>
							</c:forEach>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==4 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseName }</td>
							</c:forEach>
						</c:when>
					</c:choose>
				</tr>
				<tr class="DBtr">
					<td class="DBxx">地址</td>
					<c:choose>
						<c:when test="${compares.size()==2 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseAddress }</td>
							</c:forEach>
							<td></td>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==3 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseAddress }</td>
							</c:forEach>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==4 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseAddress }</td>
							</c:forEach>
						</c:when>
					</c:choose>
				</tr>
				<tr class="DBtr">
					<td class="DBxx">租金</td>
					<c:choose>
						<c:when test="${compares.size()==2 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.housePrice }元/月</td>
							</c:forEach>
							<td></td>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==3 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.housePrice }元/月</td>
							</c:forEach>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==4 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.housePrice }元/月</td>
							</c:forEach>
						</c:when>
					</c:choose>
				</tr>
				<tr class="DBtr">
					<td class="DBxx">面积</td>
					<c:choose>
						<c:when test="${compares.size()==2 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseArea }㎡</td>
							</c:forEach>
							<td></td>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==3 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseArea }㎡</td>
							</c:forEach>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==4 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseArea }㎡</td>
							</c:forEach>
						</c:when>
					</c:choose>
				</tr>
				<tr class="DBtr">
					<td class="DBxx">付款方式</td>
					<c:choose>
						<c:when test="${compares.size()==2 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.pay.payName }</td>
							</c:forEach>
							<td></td>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==3 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.pay.payName }</td>
							</c:forEach>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==4 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.pay.payName }</td>
							</c:forEach>
						</c:when>
					</c:choose>
				</tr>
				<tr class="DBtr">
					<td class="DBxx">户型</td>
					<c:choose>
						<c:when test="${compares.size()==2 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseUnit }</td>
							</c:forEach>
							<td></td>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==3 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseUnit }</td>
							</c:forEach>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==4 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseUnit }</td>
							</c:forEach>
						</c:when>
					</c:choose>
				</tr>
				<tr class="DBtr">
					<td class="DBxx">楼层</td>
					<c:choose>
						<c:when test="${compares.size()==2 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseFloor }层</td>
							</c:forEach>
							<td></td>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==3 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseFloor }层</td>
							</c:forEach>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==4 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.houseFloor }层</td>
							</c:forEach>
						</c:when>
					</c:choose>
				</tr>
				<tr class="DBtr">
					<td class="DBxx">装修程度</td>
					<c:choose>
						<c:when test="${compares.size()==2 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.fitment.fitmentName }</td>
							</c:forEach>
							<td></td>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==3 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.fitment.fitmentName }</td>
							</c:forEach>
							<td></td>
						</c:when>
						<c:when test="${compares.size()==4 }">
							<c:forEach items="${compares}" var="compare">
								<td>${compare.house.fitment.fitmentName }</td>
							</c:forEach>
						</c:when>
					</c:choose>
				</tr>
			</table>
		</div>

	</div>
	<div id="footer11">

		<div class="footer-bottom">
			<div class="container" align="center">
				<!--<div class="col-md-4 footer-logo">
                <h2><a href="index.jsp">搜趣房</a></h2>
            </div>-->
				<h2>
					<a href="<%=basePath%>/index">搜趣房</a>
				</h2>
				<!--<div class="clearfix"> </div>-->
			</div>
		</div>
	</div>
</body>
</html>