<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我收到的评价</title>
 <%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table table-hover">
    <tbody>
    <tr style="background-color: whitesmoke"><th><select id="ddlDuringCent" name="durCent" onchange="reivewFilter()">
        <option value="-1">全部星级</option>
        <option value="1">1星</option>
        <option value="2">2星</option>
        <option value="3">3星</option>
        <option value="4">4星</option>
        <option value="5">5星</option>
    </select></th><th>房源信息</th><th>房客称谓</th><th>交易信息</th></tr>
    <tr><td>五星</td><td>天鹅小区</td><td>小王</td><td>订单号：12138</td></tr>
    <tr><td>五星</td><td>天鹅小区</td><td>小王</td><td>订单号：12138</td></tr>
    <tr><td>五星</td><td>天鹅小区</td><td>小王</td><td>订单号：12138</td></tr>
    <tr><td>五星</td><td>天鹅小区</td><td>小王</td><td>订单号：12138</td></tr>
    </tbody>
</table>
</body>
</html>