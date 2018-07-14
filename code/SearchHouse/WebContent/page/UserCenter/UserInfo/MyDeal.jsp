<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的交易</title>
<%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <style>
        #title{

            color: #e96c1f;
        }
        #h1{
            font-size: 20px;}


    </style>
   </head>
<body>
<div id="title">
    <h1 id="h1">订单管理</h1>
</div>
<table border="0" cellspacing="0" cellpadding="0" class="table table-hover">
    <tbody>
    <tr style="background-color: whitesmoke">
    <th>订单联系人</th><th>房源信息</th><th>单月租金</th>
    <th>起租时间</th><th>退租时间</th><th>操作</th></tr>
    <c:forEach items="${indents}" var="indent">
    <tr><td>${indent.userInfo.userId }</td><td>${indent.house.houseName}</td>
    <td>${indent.house.housePrice}</td><td>${indent.timeStart}</td>
    <td>${indent.timeEnd}</td><td><a href="${pageContext.request.contextPath }/deleteIndent?indentId=${indent.indentId}">删除</a></td>
    </tr>
    
    </c:forEach>
    <tr></tr>

    

    </tbody></table>


</body>
</html>