<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.div0 {
	height: 600px;
	width: 600px;
	margin: 5% auto;
	background: url("../imagess/21.jpg");
	position: relative;
}

.p1 {
	padding-top: 20%;
	text-align: center;
	font-size: 20px;
	line-height: 200%;
	position: relative;
}

.strong {
	color: coral;
}

#phone-step-1 {
	margin-left: 18%;
}

a {
	text-decoration: none;
}
</style>
<script language="javascript" type="text/javascript">
	var i = 5;
	var intervalid;
	intervalid = setInterval("fun()", 500);
	function fun() {
		if (i == 0) {
			window.location.href = "SearchHouse/page/index.jsp";
			clearInterval(intervalid);
		}
		document.getElementById("mes").innerHTML = i;
		i--;
	}
</script>
</head>
<body>
	<div class="div0">
		<p class="p1">
			<strong class="strong">支付失败</strong><br>
		</p>

		<div id="phone-step-1">
			<span style="font-size: 25px"><span id="mes">5</span>秒后转至个人中心。<a
				href="SearchHouse/page/index.jsp">立即跳转</a></span>
		</div>

	</div>
</body>
</html>