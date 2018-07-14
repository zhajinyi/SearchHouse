<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信用详情</title>
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
    <h1 id="h1">信用详情</h1>
</div>
    <div class="creditlevelimg">
        <strong>用户名</strong>，目前您的信用：
        <span class="red">（4级）</span>

     </div>
<div class="progress progress-striped active" style="width: 20%;">
    <div class="progress-bar progress-bar-success" role="progressbar"
         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
         style="width: 40%;">
        <span class="sr-only">40% 完成</span><span>400/1000</span>
    </div>
</div>
<span>距离皇冠还有600分，加油！</span>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-hover" style="margin-top: 30px">
    <tbody><tr class="color_ccc" style="background-color: #fafafa">
        <th style="width:10%">项目</th>
        <th style="width:5%">信用</th>
        <th style="width:10%">日期</th>
    </tr>

    <tr class="color_fff">
        <td><p>个人中心验证邮箱</p></td>
        <td>
            <span class="red addcreditcountspan"><i class="addcreditcount"></i>50</span>
        </td>
        <td>
            2017-07-21 16:12:22
        </td>
    </tr>
    <tr class="color_ccc">
        <td><p>注册为58同城用户</p></td>
        <td>
            <span class="red addcreditcountspan"><i class="addcreditcount"></i>10</span>
        </td>
        <td>
            2016-02-15 09:16:07
        </td>
    </tr>
    <tr class="color_fff">
        <td><p>验证手机:18361296931</p></td>
        <td>
            <span class="red addcreditcountspan"><i class="addcreditcount"></i>100</span>
        </td>
        <td>
            2016-02-15 09:16:06
        </td>
    </tr>
    </tbody></table>


</body>
</html>