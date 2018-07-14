<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的收藏</title>
 <%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>

<table cellspacing="0" cellpadding="0"  width="10%" id="favContent" class="table table-hover" >
    <tbody>
    <tr id="tablehead">
        <th width="200">房源标题</th>
        <th width="100">房主称谓</th>
       <!--  <th width="200">收藏时间</th> -->
        <th width="100">操作</th>
    </tr>
    <c:forEach items="${collects}" var="collect">
    <c:if test="${collect.userInfo.userId==user.userId }">
    <tr><td>${collect.house.houseName}</td><td>${collect.house.userInfo.userId}</td>
    <%-- <td><fmt:formatDate type="both" value="${collect.collectTime }" /> --%>
    </td><td><a href="${pageContext.request.contextPath }/getHouseById?houseId=${collect.house.houseId}" target="_black">查看</a>|
    <a href="${pageContext.request.contextPath}/deletecollect?collectId=${collect.collectId}">删除</a></td></tr>
    
    </c:if></c:forEach>
</tbody>
</table>

</body>
</html>