<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="<%=basePath%>/page/lib/bootstrap/css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="<%=basePath%>/page/stylesheets/theme.css">
    <link rel="stylesheet" href="<%=basePath%>/page/lib/font-awesome/css/font-awesome.css">

    <script src="<%=basePath%>/page/lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=basePath%>/page/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=basePath%>/page/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=basePath%>/page/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=basePath%>/page/assets/ico/apple-touch-icon-57-precomposed.png">
   
   <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
        a:hover{
        cursor: pointer;}
</style>


<script>


function showdetails(userId){
	
	var xmlhttp = new XMLHttpRequest();
	
	xmlhttp.open("GET","${pageContext.request.contextPath }/getUserById?userId="+ userId, true);
	
	xmlhttp.send();
	
	
	xmlhttp.onreadystatechange=function(){
		
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		
		$("#div-details").empty();
		var user = JSON.parse(xmlhttp.responseText);
		
		var content=
	"<ul><li>用户ID："+user.userId+"</li>"+
		"<li>用户昵称："+user.userName+"</li>"+
		"<li>用户电话："+user.phoneNumber+"</li>"+
		"<li>用户邮箱："+user.userMail+"</li>"+
		
		"<li>用户常驻地址："+user.address+"</li></ul>";
		
		
		
	 	$("#div-details").append(content); 
		
		
		
	
	} 
	  
}
	
	
	
	} 



	





</script>







</head>


<body class="">
<div class="navbar">
    <div class="navbar-inner">
        <ul class="nav pull-right">

            <li id="fat-menu" class="dropdown">
                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-user"></i>${admin.adminNickName}
                    <i class="icon-caret-down"></i>
                </a>

                <ul class="dropdown-menu">
                    <li><a tabindex="-1" href="#">我的账户</a></li>
                    <li class="divider"></li>
                    <li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
                    <li class="divider visible-phone"></li>
                    <li><a tabindex="-1" href="${pageContext.request.contextPath}/page/login.jsp">注销</a></li>
                </ul>
            </li>

        </ul>
        <a class="brand" href="${pageContext.request.contextPath}/page/html/AdminIndex.jsp"><span class="first">搜趣房</span> <span class="second"></span></a>
    </div>
</div>


<div class="sidebar-nav">
    <a href="#admin-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>管理员</a>
    <ul id="admin-menu" class="nav nav-list collapse">
        <li><a href="${pageContext.request.contextPath}/queryAllAdmin">管理员列表</a></li>
        <li><a href="${pageContext.request.contextPath}/updateAdminInit?adminId=${admin.adminId}">管理员信息</a></li>
    </ul>
    <a href="#house-menu" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>房源管理</a>
    <ul id="house-menu" class="nav nav-list collapse">
        <li><a href="${pageContext.request.contextPath}/queryAllhouses">房屋申请信息</a></li>
        <li><a href="${pageContext.request.contextPath}/queryAllhouses2">房屋审核未通过</a></li>
        <li><a href="${pageContext.request.contextPath}/queryAllhouses3">全部房源信息</a></li>
        <li><a href="${pageContext.request.contextPath}/queryAllIndents">房屋交易信息</a></li>
    </ul>
        <a href="#user-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>用户管理</a>
    <ul id="user-menu" class="nav nav-list collapse in">
       <li><a href="${pageContext.request.contextPath}/getAllUsers">全部用户</a></li>
       <li><a href="${pageContext.request.contextPath}/queryAllQualities">用户认证</a></li>
     </ul>
</div>


<div class="content">

    <div class="header">

        <h1 class="page-title">用户管理</h1>
    </div>

    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/page/html/AdminIndex.jsp">首页</a> <span class="divider">/</span></li>
        <li class="active">用户管理</li>
    </ul>

    <div class="container-fluid">
        <div class="row-fluid">
<!--
            <div class="btn-toolbar">
                <button class="btn btn-primary"><i class="icon-plus"></i> New User</button>
                <button class="btn">Import</button>
                <button class="btn">Export</button>
                <div class="btn-group">
                </div>
            </div>-->
            <div class="well">
                <table class="table">
                    <thead>
                    <tr>
                        <!-- <th width="20" style="text-align: center;">#</th> -->
                        <th width="100" style="text-align: center;">用户ID</th>
                        <th width="100" style="text-align: center;">客户昵称</th>
                        <th width="300" style="text-align: center;">用户手机号</th>
                        <th width="300" style="text-align: center;">用户邮箱号</th>
                        <th width="300" style="text-align: center;">用户详情</th>
                       <!--  <th width="100" style="text-align: center;">删除用户</th> -->
                        
                        
                        <th style="width: 26px;"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="user">
                    
                    <tr>
                    
                    <td style="text-align: center;">${user.userId}</td>
                    <td style="text-align: center;">${user.userName}</td>
                    <td style="text-align: center;">${user.phoneNumber}</td>
                    <td style="text-align: center;">${user.userMail}</td>
                    <td style="text-align: center;">
                    <a data-toggle="modal" data-target="#details" onclick="showdetails('${user.userId}')" >查看详情</a></td>
                  <!--   <td style="text-align: center;"> -->
                   <!--  <a href="#"><i class="icon-remove"></i></a></td> -->
                   
                   
                    </tr>
                      
                    
                    
                    </c:forEach>
                    <tr><td style="text-align: center;"><!-- <input type="checkbox"> --></td>
                    <td><!-- 全选 --></td><td></td>
                    <td style="text-align: center;"><!-- <input type="button" value="发送短信" disabled="disabled"> --></td>
                    <td style="text-align: center;"><!-- <input type="button" value="发送邮件"></td> --><td></td><td></td></tr>
                    
                   
                    </tbody>
                </table>
            </div>
          <!--   <div class="pagination">
                <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>
  -->

         
            
             <!-- <div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">审核确认</h3>
                </div>
                <div class="modal-body">
                    <form>
                    <ul style="font-size: 20px;list-style: none;">
                    <li>
                     <input type="checkbox" name="checkbox" class="counsel" value="房源存在虚假信息" />房源存在虚假信息 </li>
                     <li>
                     <input type="checkbox" name="checkbox" class="counsel" value="房源价格虚高（虚低）" />房源价格虚高（虚低）</li>
                     <li>
                     <input type="checkbox" name="checkbox" class="counsel" value="房主号码不存在"  />房主号码不存在</li>
                     <li>
                     <input type="checkbox" name="checkbox" class="counsel" value="该房源与其他信息存在雷同" />该房源与其他信息存在雷同</li>
                     <li>
                     <span>其他:</span><input type="text" style="height:20px;" name="others" class="counsel" id="others" ></li>
                     </ul>
                    </form>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
                    <button class="btn btn-danger" data-dismiss="modal" id="wsx">确定</button>
                </div>
            </div> -->
            


            <footer>
                <hr>
                <p>&copy; 2017 <a href="#" target="_blank">搜趣房</a></p>
            </footer>
        </div>
    </div>
</div>



<div class="modal fade" id="details" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="height:700px;">
  <div class="modal-dialog" role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">个人信息</h4>
      </div>
      <div id="div-details" class="modal-body" style="height:700px;" >
     
         
      </div>
      <div class="modal-footer">
        
        <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
      </div>
    </div>
  </div>
</div>



<script src="<%=basePath%>/page/lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function() {
        $('.demo-cancel-click').click(function(){return false;});
    });
</script>

</body>
</html>