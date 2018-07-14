<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <ul id="admin-menu" class="nav nav-list collapse in">
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
    <ul id="user-menu" class="nav nav-list collapse">
       <li><a href="${pageContext.request.contextPath}/getAllUsers">全部用户</a></li>
       <li><a href="${pageContext.request.contextPath}/queryAllQualities">用户认证</a></li>
     </ul>
</div>


<div class="content">

    <div class="header">

        <h1 class="page-title">管理员信息</h1>
    </div>

    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/page/html/AdminIndex.jsp">首页</a> <span class="divider">/</span></li>
        <li><a href="${pageContext.request.contextPath}/page/html/AdminList.jsp">管理员列表</a> <span class="divider">/</span></li>
        <li class="active">管理员信息</li>
    </ul>

    <div class="container-fluid">
        <div class="row-fluid">

           
            </div>
            <div class="well">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#home" data-toggle="tab">信息</a></li>
                    <li><a href="#profile" data-toggle="tab">修改密码</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="home">
                        <form id="tab" action="${pageContext.request.contextPath}/updateAdmin">
                            <label>用户名</label>
                            <input type="text" value="${admin.adminId }" class="input-xlarge" name="adminId">
                            <label>姓名</label>
                            <input type="text" value="${admin.adminNickName }" class="input-xlarge" name="adminNickName">
                            <label>邮箱</label>
                            <input type="text" value="${admin.adminEmail }" class="input-xlarge" name="adminEmail">
                            <input type="hidden" value="${admin.adminPWD}" name="adminPWD"/>
                            <!-- <label>地址</label>
                            
                            <textarea value="Smith" rows="3" class="input-xlarge">苏州吴中区</textarea> -->
                           <div class="btn-toolbar">
                           <button  type="submit" class="btn btn-primary"><i class="icon-save"></i> 保存</button>
                <a href="#myModal" data-toggle="modal" class="btn">删除</a>
                <div class="btn-group">
                </div>
            </div>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="profile">
                        <form id="tab2">
                            <label>新密码</label>
                            <input type="password" class="input-xlarge">
                            <div>
                                <button class="btn btn-primary">修改</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>

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



<script src="<%=basePath%>/page/lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function() {
        $('.demo-cancel-click').click(function(){return false;});
    });
</script>

</body>
</html>