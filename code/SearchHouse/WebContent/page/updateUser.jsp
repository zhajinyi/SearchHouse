<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/updateUserInfo">
		<input type="hidden" name="userId" value="${user.userId }" /><br>
		密码：<input type="password" name="userPassword"
			value="${user.userPassword }" /><br> 昵称：<input type="text"
			name="userName" value="${user.userName }" /><br> 手机号：<input
			type="text" name="phoneNumber" value="${user.phoneNumber }" /><br>
		<input type="submit" value="修改">

	</form>
</body>
</html>