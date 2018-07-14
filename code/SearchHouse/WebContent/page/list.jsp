<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${pageContext.request.contextPath }/addUserInfoInit"><input
		type="submit" value="注册" /></a>
	<table width="1000px" border="1" cellspacing="0px" cellpadding="0px"
		align="center">
		<tr>
			<th>房屋Id</th>
			<th>房屋名称</th>
			<th>楼层</th>
			<th>小区名称</th>
			<th>户型</th>
			<th>总楼层</th>
			<th>卧室</th>
			<th>用户</th>
			<th>限制</th>
			<th>装修</th>
			<th>类型</th>
			<th>租金</th>
			<th>状态</th>
			<th>配置</th>
			<th>图片</th>
		</tr>
		<!-- 遍历集合 -->
		<c:forEach items="${houses}" var="house">
			<tr>
				<td>${house.houseId }</td>
				<td>${house.houseName }</td>
				<td>${house.houseFloor }</td>
				<td>${house.locationName }</td>
				<td>${house.houseFloor }</td>
				<td>${house.houseFloor }</td>
				<td>${house.bedRoom.bedroomName }</td>
				<td>${house.userInfo.userName }</td>
				<td>${house.limit.limitName }</td>
				<td>${house.fitment.fitmentName }</td>
				<td>${house.houseSetType.houseSetTypeName }</td>
				<td>${house.pay.payName }</td>
				<td>${house.houseStatus.houseStatusName }</td>
				<td>${house.deploies}</td>
				<td>${house.photos}</td>
				<%-- <td>  
                            <a href="${pageContext.request.contextPath }/updateUserInfoInit?userId=${user.userId }">修改</a>  
                            <a href="${pageContext.request.contextPath }/deleteUserInfo?userId=${user.userId }">删除</a>  
                        </td>   --%>
			</tr>
		</c:forEach>

	</table>
</body>
</html>