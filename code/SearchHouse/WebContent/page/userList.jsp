<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户信息</title>
</head>
<body>
	<a href="${pageContext.request.contextPath }/addUserInfoInit"><input
		type="submit" value="注册" /></a>
	<table width="500px" border="1" cellspacing="0px" cellpadding="0px"
		align="center">
		<tr>
			<th>账号</th>
			<th>密码</th>
			<th>昵称</th>
			<th>手机号</th>
			<th>操作</th>
		</tr>
		<!-- 遍历集合 -->
		<c:forEach items="${users}" var="user">
			<tr>
				<td>${user.userId }</td>
				<td>${user.userPassword }</td>
				<td>${user.userName }</td>
				<td>${user.phoneNumber}</td>
				<td><a
					href="${pageContext.request.contextPath }/updateUserInfoInit?userId=${user.userId }">修改</a>
					<a
					href="${pageContext.request.contextPath }/deleteUserInfo?userId=${user.userId }">删除</a>
				</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>