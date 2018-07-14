<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	验证码验证成功！
	<%-- 
    ${houseTypes[0]}<br>
      ${houseTypes[0].houseId}
   ${houseTypes[1]}<br>
    ${houseTypes[2]}<br>
    ${houseTypes[3]}<br> --%>

	验证成功
	<table border="1" width="500px" cellspacing="0" align="center">
		<tr>
			<th>id</th>
			<th>类型</th>
			<th>地址</th>
			<th>小区名</th>
			<th>厅室</th>
			<th>卧室</th>
			<th>限制</th>
			<th>装修</th>
			<th>标题</th>
			<th>姓名</th>
			<th>姓别</th>
			<th>价格</th>
			<th>面积</th>

		</tr>
		<c:forEach items="${housemohu }" var="houseType">
			<tr align="center">

				<td>${houseType.houseId}</td>
				<td>${houseType.houseTypeId==0?"整套":"单间"}</td>
				<td>${houseType.houseAddress }</td>
				<td>${houseType.locationName}</td>
				<td>${houseType.houseUnit}</td>
				<td>${houseType.bedRoom.bedroomName}</td>
				<td>${houseType.limit.limitName}</td>
				<td>${houseType.fitment.fitmentName}</td>
				<td>${houseType.houseName}</td>
				<td>${houseType.userInfo.userName}</td>
				<td>${houseType.userInfo.userSex==0?"女":"男"}</td>
				<td>${houseType.housePrice}</td>
				<td>${houseType.houseArea}</td>
			</tr>
		</c:forEach>

	</table>
	<img src="SearchHouse/images/2.jpg">

</body>
</html>