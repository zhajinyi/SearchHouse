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

    <!-- Demo page code -->

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

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=basePath%>/page/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=basePath%>/page/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=basePath%>/page/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=basePath%>/page/assets/ico/apple-touch-icon-57-precomposed.png">

<script>

function showdetails(indentId) {
	
	var xmlhttp = new XMLHttpRequest();
	/* var phonevalue = $("#phoneNumber").val(); */
	xmlhttp.open("GET","${pageContext.request.contextPath }/getIndentsById?indentId="+ indentId, true);
	xmlhttp.send();
	
	
	xmlhttp.onreadystatechange=function(){
		
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			
		$("#div-details").empty();
		var indent = JSON.parse(xmlhttp.responseText);
		
		var content="<ul><li>订单编号："+indent.indentId+"</li>"+
		"<li>房客称谓："+indent.user.userId+"</li>"+
		"<li>房客电话："+indent.inPhone+"</li>"+
		"<li>房主称谓："+indent.house.user.userId+"</li>"+
		"<li>房主电话："+indent.house.user.phoneNumber+"</li>"+
		"<li>交易价格："+indent.house.housePrice+"</li>"+
		"<li>起租时间："+indent.timeStart+"</li>"+
		"<li>退租时间："+indent.timeEnd+"</li>"+
		"<li>支付形式："+indent.house.pay.payName+"</li>"+
		"<li>房屋名称："+indent.house.houseName+"</li>"+
		"<li>房屋名称："+indent.house.houseAddress+"</li>"+
		"<li>房屋名称："+indent.house.detailedIntro+"</li></ul>";
		
		
		
		
		
		
		
		
	 	$("#div-details").append(content); 
		
		
		
	
	} 
	  
}} 



	




</script>
</head>

<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="">
<!--<![endif]-->

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
    <ul id="house-menu" class="nav nav-list collapse in">
        <li><a href="${pageContext.request.contextPath}/queryAllhouses">房屋申请信息</a></li>
        <li><a href="${pageContext.request.contextPath}/queryAllhouses2">房屋审核未通过</a></li>
        <li><a href="${pageContext.request.contextPath}/queryAllhouses3">全部房源信息</a></li>
        <li><a href="${pageContext.request.contextPath}/queryAllIndents">房屋交易信息</a></li>
    </ul>
        <a href="#user-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>用户管理</a>
    <ul id="user-menu" class="nav nav-list collapse">
       <li><a href="${pageContext.request.contextPath}/getAllUsers">全部用户</a></li>
       <li><a href="${pageContext.request.contextPath}/queryAllQualities">用户认证</a></li>
     </ul>
</div>



<div class="content">

    <div class="header">

        <h1 class="page-title">交易信息</h1>
    </div>

    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/page/html/AdminIndex.jsp">首页</a> <span class="divider">/</span></li>
        <li class="active">交易信息</li>
    </ul>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="well">
                <table class="table">
                    <thead>
                    <tr>
                        <th width="20" style="text-align: center;">#</th>
                        <th width="300" style="text-align: center;">房源名称</th>
                        <th width="100" style="text-align: center;">房主称谓</th>
                        <th width="100" style="text-align: center;">房客称谓</th>
                       
                        <th width="100" style="text-align: center;">交易金额</th>
                        <th width="100" style="text-align: center;">查看详情</th>
                        
                    </tr>
                    </thead>
                    <tbody>
                   <c:forEach items="${indents}" var="indent">
                   
                    <tr>
                    <td style="text-align: center;">${indent.indentId}</td>
                    <td style="text-align: center;">${indent.house.houseName}</td>
                    <td style="text-align: center;">${indent.house.user.userId}</td>
                    <td style="text-align: center;">${indent.user.userId}</td>
                    <td style="text-align: center;">${indent.house.housePrice }</td>
                    <td style="text-align: center;">
                    <a data-toggle="modal" data-target="#details" onclick="showdetails(${indent.indentId})">订单详情</a></td>
                   
                   
                   
                    </tr>
                   
                   
                   
                   
                   
                   
                   </c:forEach>
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
            </div> -->

            <div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Delete Confirmation</h3>
                </div>
                <div class="modal-body">
                    <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                    <button class="btn btn-danger" data-dismiss="modal">Delete</button>
                </div>
            </div>



              <footer>
                <hr>
                <p>&copy; 2017 <a href="#" target="_blank">搜趣房</a></p>
            </footer>
        </div>
    </div>
</div>
<!-- 订单详情模态框 -->
<div class="modal fade" id="details" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="height:700px;">
  <div class="modal-dialog" role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">订单详情</h4>
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