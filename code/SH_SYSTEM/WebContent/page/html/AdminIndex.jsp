<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
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
            height: 300px;
            width: 800px;
            margin: 0px auto;
            margin-top: 1em;
        }

        .brand {
            font-family: georgia, serif;
        }

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
    <link rel="shortcut icon" href="<%=basePath%>/page/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=basePath%>/page/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=basePath%>/page/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=basePath%>/page/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=basePath%>/page/assets/ico/apple-touch-icon-57-precomposed.png">
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
                    <li><a tabindex="-1" href="${pageContext.request.contextPath}/page/html/AdminInfo.jsp">我的账户</a></li>
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
<!-- page/html/AdminInfo.jsp -->

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
        <%-- <div class="stats">
            <p class="stat"><span class="number">27</span>任务</p>
            <p class="stat"><span class="number">15</span>消息</p>
        </div> --%>

        <h1 class="page-title">管理员</h1>
    </div>

    <ul class="breadcrumb">
        <li class="active">管理员</li>
    </ul>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="row-fluid">
               <!-- <div class="block">
                    <a href="#page-stats" class="block-heading" data-toggle="collapse">最新统计</a>
                    <div id="page-stats" class="block-body collapse in">
                        <div class="stat-widget-container">
                            <div class="stat-widget">
                                <div class="stat-button">
                                    <p class="title">2,500</p>
                                    <p class="detail">用户</p>
                                </div>
                            </div>
                            <div class="stat-widget">
                                <div class="stat-button">
                                    <p class="title">3,299</p>
                                    <p class="detail">房屋信息</p>
                                </div>
                            </div>
                            <div class="stat-widget">
                                <div class="stat-button">
                                    <p class="title">$1,500</p>
                                    <p class="detail">进行中交易</p>
                                </div>
                            </div>
                            <div class="stat-widget">
                                <div class="stat-button">
                                    <p class="title">$12,675</p>
                                    <p class="detail">已完成交易</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>-->
            </div>
            <div class="row-fluid">
               <%--  <div class="block span6">
                    <a href="#tablewidget" class="block-heading" data-toggle="collapse">管理员列表</a>
                    <div id="tablewidget" class="block-body collapse in">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>姓名</th>
                                <th>用户名</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${admins}" var="admin">
                            
                             <tr>
                             <td>${admin.adminNickName}</td>
                             <td>${admin.adminId}
                             </tr>
                            
                            
                            
                            </c:forEach>
                         
                            </tbody>
                        </table>
                        <p><a href="${pageContext.request.contextPath}/page/html/AdminList.jsp">更多...</a></p>
                    </div>
                    </div>
                     --%>
                    
                   <%--  <img src="${pageContext.request.contextPath}/page/images/4.png">
                     --%>
                    
                    
                  <%--  <div class="block span6">
                        <div class="block-heading">
                            <span class="block-icon pull-right">
                                <a href="#" class="demo-cancel-click" rel="tooltip" title="点击以刷新"><i
                                class="icon-refresh"></i></a>
                            </span>
                            <a href="#widget2container" data-toggle="collapse">最新房源申请列表</a>
                        </div>
                        <div id="widget2container" class="block-body collapse in">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>房源标题</th>
                                    <th>用户称谓</th>
                                    <th>发布时间</th>
                                    <th>审核状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                
                                </tbody>
                            </table>
                        </div>
                    </div> --%>
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
    $(function () {
        $('.demo-cancel-click').click(function () {
            return false;
        });
    });
</script>
</body>
</html>