<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


    <script src="<%=basePath%>/page/UserCenter/js/scripts.js"></script>
    <link href="<%=basePath%>/page/UserCenter/css/styles.css" rel="stylesheet">
    <link href="<%=basePath%>/page/UserCenter/css/style.css" rel="stylesheet" type="text/css" media="all" />
<style>
        .panel-group{
            width: 120px;
            margin-left: 7%;
            margin-top: 2%;
        }
        .left-a{

            text-decoration: none;
        }
        .left-a:hover{
            text-decoration: none;
            color: #e96c1f;
            font-size: 20px;
        }
        .panel-heading{
            text-align: center;
        }
        #header{

            font-size: 26px;
            border-bottom:solid 1px #27da93;
            width: 150px;
            text-align: center;
            margin-top: 3%;
        }
        #header:hover{
            cursor: pointer;

        }
        #header-a:hover{
            text-decoration: none;
            color: #e96c1f;

        }
        h3{
            display: inline;
            font-size: 16px;
            text-align: center;


        }
        .panel-group{
            float: left;
            margin-left: 15px;
            margin-top: 20px;
        }
        .col-md-2{
            margin-left: 65px;
            margin-top: 20px;
        }
        #ContainerFrame{
            margin-left: 60px;
        }
         .panel-body{
            margin-left: 12px;
        }
 #ContainerFrame{
            margin-left: 60px;
        }
        #span-right-icons:hover{
            cursor: pointer;
        }
        #btn-logout{
        background:##27da93;
        }
        #userset{
       
        
        color:white;
        }
        #userset:hover{
        cursor: pointer;
        }
</style>
     <script>
     $(function () {
         $("#btn-logout").click(function () {
             window.location="${pageContext.request.contextPath}/closeSession?userId=${user.userId}";
 		})
 	})
    </script>
</head>
<body>
<!--水平导航栏-->
<div class="header">
    <div class="container">
        <div class="logo">
            <h1><a href="<%=basePath%>/index">搜趣房</a></h1>
            
        </div>
            
        <div class="top-nav">
            <ul class="right-icons">
            
                <li><span><a href="<%=basePath%>/page/UserCenter/UserInfo/UserCenter.jsp"><i class="glyphicon glyphicon-phone"> </i><c:choose><c:when test="${empty user.userName}">${user.userId}</c:when><c:otherwise>${user.userName }</c:otherwise></c:choose></a></span></li>
                <li id="userset"><span><a href="<%=basePath%>/page/UserCenter/UserSet/UserSet.jsp"><i class="glyphicon glyphicon-cog"></i>账户设置</a></span></li>
                <li><span id="span-right-icons"><a data-toggle="modal" data-target="#myModal"><i class="glyphicon glyphicon-log-out"></i>注销</a></span></li>
            </ul>
        </div>
    </div>
</div>

<!--左侧栏-->
<div class="col-md-2">
    <!--左侧导航栏标题-->
    <div id="header">
        <a id="header-a" href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserCenter.jsp">个人中心</a>
    </div>

    <!--左侧导航栏-->
    <div class="panel-group" id="accordion">

        <!--我的发布-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <a class="left-a" target="iframe1" href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/Release.jsp">
                    我的发布
                </a>
            </div>
        </div>


        <!--我的收藏-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <a class="left-a"
                   target="iframe1" href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/Collection.jsp" >
                    我的收藏
                </a>
            </div>
        </div>
        
         <!--我的交易-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <a class="left-a"
                   target="iframe1" href="${pageContext.request.contextPath}/getIndentByuserID?userId=${user.userId}" >
                   我的交易
                </a>
            </div>
        </div>

      <%--   <!--我的交易-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <a class="left-a" data-toggle="collapse" data-parent="#accordion"
                   href="#collapseOne">
                    我的交易
                </a>
            </div>

            <div id="collapseOne" class="panel-collapse collapse">
                <div class="panel-body">
                    <p><a class="deal-a" target="iframe1" href="">订单管理</a></p></br>
                    <p><a class="deal-a" target="iframe1" href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/Comment.jsp">评价管理</a></p>
                </div>
            </div>


        </div>
 --%>


        <%-- <!--客户服务-->
         <div class="panel panel-default">
            <div class="panel-heading">
                <a class="left-a"
                   target="iframe1" href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/CreditInfo.jsp" >
                    信用详情
                </a>
            </div>
        </div> --%>
        
       <%--  <div class="panel panel-default">
            <div class="panel-heading">
                <a class="left-a" data-toggle="collapse" data-parent="#accordion"
                   href="#collapseTwo">
                    <span class="leftspan">客户服务</span>
                </a>
            </div>

            <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                    <p><a class="deal-a" target="iframe1" href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/MyComplaint.jsp">我的投诉</a></p></br>
                    <p><a class="deal-a" target="iframe1" href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/MyAppeal.jsp">我的申诉</a></p></br>
                    <p><a class="deal-a" target="iframe1" href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/CreditInfo.jsp">信用详情</a></p></br>
                </div>
            </div>
        </div> --%>

        <!--帮助主题-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <a class="left-a" target="iframe1" href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/Help.jsp">帮助主题
                </a>
            </div>
        </div>
    </div>
</div>

<!--主体内容-->
<div id="RightMennu">
    <iframe id="ContainerFrame" name="iframe1" style="margin-top: 10px;margin-left: 5%" src="${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserInfo.jsp" scrolling="no"
            frameborder="0" width="815px" height="800px"></iframe>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">注销账户</h4>
            </div>
            <div class="modal-body">
                是否确认注销此账户？
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="btn-logout">注销</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>