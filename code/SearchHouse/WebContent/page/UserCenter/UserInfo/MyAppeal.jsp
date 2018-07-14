<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的申诉</title>
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
    <h1 id="h1">我的申诉</h1>
</div>
<table id="tab" class="table table-hover" border="0" cellpadding="0" cellspacing="0"
       style="table-layout:fixed; width:800px;margin-left:10px;">
    <tbody><tr style="background-color:#F5F5F5;">
    <td style="width: 20%" align="center"> 信息编号</td>
    <td style="width: 30%" align="center"> 申诉类型</td>
    <td style="width: 20%" align="center"> 提出申诉时间</td>
    <td style="width: 38%" align="center"> 申诉记录</td>
</tr>
    <tr><td>1</td><td>水电费用</td><td>2017年7月25日</td><td>申诉编号：12412414</td></tr>
    <tr><td>1</td><td>水电费用</td><td>2017年7月25日</td><td>申诉编号：12412414</td></tr>
    <tr><td>1</td><td>水电费用</td><td>2017年7月25日</td><td>申诉编号：12412414</td></tr>
    <tr><td>1</td><td>水电费用</td><td>2017年7月25日</td><td>申诉编号：12412414</td></tr>
    <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


</tbody></table>
</body>
</html>