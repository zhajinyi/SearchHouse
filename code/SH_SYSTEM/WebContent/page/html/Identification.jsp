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

 

  

    <!-- Le fav and touch icons -->
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

function showdetails(houseId) {
	
	var xmlhttp = new XMLHttpRequest();
	var phonevalue = $("#phoneNumber").val();
	xmlhttp.open("GET","${pageContext.request.contextPath }/getHouseById?houseId="+ houseId, true);
	xmlhttp.send();
	
	
	xmlhttp.onreadystatechange=function(){
		
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		
		$("#div-details").empty();
		var house = JSON.parse(xmlhttp.responseText);
		
		var content="<ul><li>房屋名称："+house.houseId+"</li>"+
		"<li>房屋ID："+house.houseName+"</li>"+
		"<li>房主称谓："+house.user.userId+"</li>"+
		"<li>房主电话："+house.user.phoneNumber+"</li>"+
		"<li>房屋价格："+house.housePrice+"</li>"+
		"<li>房屋地址："+house.houseAddress+"</li>"+
		"<li>房屋总楼层数："+house.houseFloorTotal+"；当前楼层："+house.houseFloor+"</li>"+
		"<li>房屋面积："+house.houseArea+"㎡</li>"+
		"<li>房屋规格："+house.houseUnit+"</li>"+
		"<li>支付形式："+house.pay.payName+"</li>"+
		"<li>房屋限制："+house.limit.limitName+"</li>"+
		"<li>房屋整体描述："+house.detailedIntro+"</li></ul>";
		
		
		
	 	$("#div-details").append(content); 
		
		
		
	
	} 
	  
}} 

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

        <h1 class="page-title">用户认证</h1>
    </div>

    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/page/html/AdminIndex.jsp">首页</a> <span class="divider">/</span></li>
        <li class="active">用户认证</li>
    </ul>

    <div class="container-fluid">
        <div class="row-fluid">

            <div class="well">
                <table class="table">
                    <thead>
                    <tr>
                        <th width="20" style="text-align: center;">用户ID</th>
                        <th width="100" style="text-align: center;">用户昵称</th>
                        <th width="100" style="text-align: center;">真实姓名</th>
                        <th width="100" style="text-align: center;">身份证号码</th>
                        <th width="100" style="text-align: center;">营业证号码</th>
                        
                        <th width="100" style="text-align: center;">快速审核</th>
                        
                        <th style="width: 26px;"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${qualities}" var="quality">
                    <c:if test="${quality.qualitResult==0}">
                    <tr>
                    <td style="text-align: center;">${quality.user.userId}</td>
                    <td style="text-align: center;">${quality.user.userName}</td>
                    <td style="text-align: center;">${quality.user.realName}</td>
                    <td style="text-align: center;">${quality.qualityCard}</td>
                    <td style="text-align: center;"><c:choose><c:when test="${empty quality.qualityNum}">个人</c:when><c:otherwise>商家</c:otherwise></c:choose></td>
                    
                    <td style="text-align: center;">
                    <a href="${pageContext.request.contextPath}/updateQuality?qualityId=${quality.qualityId}" onclick="sendmsg('${quality.user.realName}','${quality.user.userMail}')" ><i class="icon-ok" style="width: 11px"></i></a>
                    <span>&nbsp;||&nbsp;</span>
                    <input type="hidden" value="${quality.user.realName}" id="name11"/>
                    <input type="hidden" value="${quality.user.userMail}" id="email12"/>
                    <%-- <input type="hidden" value="${house.houseId }" id="userId" /> --%>
                    <a href="#myModal" role="button" data-toggle="modal" id="remove" ><i class="icon-remove"></i></a>
                    </td>
                    
                    </tr>
                      
                    
                   </c:if>
                    
                    </c:forEach>
                    
                   
                    </tbody>
                </table>
                
                
                <script type="text/javascript">
               
                function sendmsg(realname,email){
               if(email!=null){
                var xmlhttp = new XMLHttpRequest();
                var emailTo =email;
                var tittle="【搜趣房】用户认证审核";
                var content=realname+"，您所申请的用户认证已经审核通过";
                xmlhttp.open("GET","${pageContext.request.contextPath}/sendmail?emailTo="+ emailTo+"&tittle="+tittle+"&content="+content, true);
                xmlhttp.send();
                } 
               
                }</script>
            </div>
           <!--  <div class="pagination">
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
                    <h3 id="myModalLabel">审核确认</h3>
                </div>
                <div class="modal-body">
                    <form>
                    
                                                               请输入用户认证未通过的原因：
                    
                    <textarea id= "reason" name = "comments" rows = 5 cols = 35></textarea>  
                    </form>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
                    <button class="btn btn-danger" data-dismiss="modal" onclick="sendmail()" id="wsx">确定</button>
                </div>
            </div>
            
<script type="text/javascript">
function sendmail(){
	var emailTo =$("#email12").val();
	var userName=$("#name11").val();
	
    if(emailTo!=null){
    
    
     var xmlhttp = new XMLHttpRequest();
     
     var emailTo=$("#email12").val();
     var reason=$("#reason").val();
     var userName=$("#name11").val();
     
     var tittle="【搜趣房】用户认证审核";
     var content=userName+",您所申请的用户认证,由于："+reason+",审核未通过,请您及时登录搜趣房进行修改";
     xmlhttp.open("GET","${pageContext.request.contextPath}/sendmail?emailTo="+emailTo+"&tittle="+tittle+"&content="+content, true);
     xmlhttp.send();
     } 
    
     }
     
   
</script>

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
        <h4 class="modal-title" id="myModalLabel">房源详情</h4>
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