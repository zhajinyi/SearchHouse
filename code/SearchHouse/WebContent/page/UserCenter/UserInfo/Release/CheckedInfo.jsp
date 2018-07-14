<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>审核中的信息</title>
    <%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
${house.houseStatus.houseStatusName }
<table class="table table-hover">
    <tbody><tr id="tablehead">
        <th width="30%">标题</th>
        <th width="10%">审核状态</th>
        <th>操作</th>
    </tr>
    
    <c:forEach items="${houses}" var="house">
    <c:if test="${house.houseStatus.houseStatusName=='审核中'}">
    <tr><td>${house.houseName}</td>
    <td>${house.houseStatus.houseStatusName }</td>
    <td><a href="#">查看</a></td>
    </tr>
    </c:if></c:forEach>
    </tbody></table>
<p><b style="white-space:nowrap">说明：</b></p>
<p> ① 待审核:待审核中的信息除了您自己外，其他人无法看到，工作人员会在24小时内为您审核。</p>
</body>
</html>