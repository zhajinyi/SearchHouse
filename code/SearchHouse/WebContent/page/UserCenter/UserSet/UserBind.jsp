<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UserBind</title>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>


    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">

<style>
    #title{color: #e96c1f;
    }
    #h1{
        font-size: 20px;
    }
    #MobileImg{
        height: 120px;
        width: 120px;
        float: left;
    }
    #MobileChar{float: left;
    margin-top: 3.3%;
    margin-left:6%;}
    .bind{
        color: white;background-color:#5CB85C;
        width: 130px;height: 50px;font-size: 20px;
        border: solid 0px;

    }
    .bindless{
    color: white;background-color:#296192;
        width: 130px;height: 50px;font-size: 20px;
        border: solid 0px;
    }
    #MobileButton{
        width: 150px;
        height: 80px;
        float: left;
        margin-top: 4%;
        margin-left: 20%;
        text-align: center;
    }
    #EmailImg{
width: 140px;
        height: 100px;
        float: left;
    }
   #EmailChar{
       width: 300px;
       height: 80px;
       margin-top: 4.5%;
       margin-left: 4%;
       float: left;

    }
    #EmailButton{
        margin-top: 5%;
        margin-left:12%;
        width: 150px;
        height: 80px;
        float: left;
text-align: center;

         }

    ul{
        display: inline;
        list-style: none;
    }
   .tipssubmints{
    text-align: center;
    color:#e96c1f;
    
    }
    .tips{
    color:#e96c1f;
    }
</style>

<script>
$(function(){
	$("#chgphonebind").click(function(){
		 window.location.href="PhoneBind/bind1.jsp"
	})
	$("#chgmailbind").click(function(){
		
		window.location.href="EmailBind/NewEmail1.jsp"
	})
	
	$("#newmailbind").click(function(){
		
		window.location.href="EmailBind/NewEmail4.jsp"
	})
})



</script>
</head>
<body>
<div id="title">
    <h1 id="h1">账号绑定</h1>
</div>

<ul>
    <li style="width: 100%">
        <!--手机绑定-->
        <div class="col-xs-12 col-md-8">
            <!--手机图标-->
            <div id="MobileImg"><img src="../img/bind.png" height="120" width="120"/></div>

            <!--手机绑定描述-->
            <div id="MobileChar"><h4><STRONG>手机绑定</STRONG></h4>
            <ul>
            <li><span>可进行手机号验证以设定认证手机号。</span></li>
            <li><span><c:if test="${!empty user.phoneNumber}">您的手机号为：<strong class="tips">${user.phoneNumber}</strong></c:if></span></li></ul>
            </div>
            <!--按钮-->
            <div id="MobileButton"><c:choose>
            <c:when test="${empty user.phoneNumber}"><input class="bind" type="button" value="认证" ></c:when>
            <c:otherwise><input id="chgphonebind" class="bindless" type="button" value="更换绑定手机" ></c:otherwise></c:choose></div>
            
            
        </div>
    </li>

    <li>
        <!--邮箱绑定-->
        <div class="col-xs-12 col-md-8">
            <!--邮箱图标-->
            <div id="EmailImg"><img src="../img/mail-binding.png" height="120" width="120"/></div>
            <!--手机绑定描述-->
            <div id="EmailChar"><h4><STRONG>邮箱绑定</STRONG></h4>
            <ul><li><span>可使用绑定邮箱直接登录58同城。</span></li>
            <li><span><c:if test="${!empty user.userMail}">您的邮箱为：<strong class="tips">${user.userMail}</strong></c:if></span>
                </li></ul>
                
                </div>
            <!--按钮-->
            <div id="EmailButton"><c:choose>
            <c:when test="${empty user.userMail}"><input id="newmailbind" class="bind" type="button" value="绑定"></c:when>
            <c:otherwise><input id="chgmailbind" class="bindless" type="button" value="更换绑定邮箱" ></c:otherwise></c:choose></div>
            
            
           
        </div>

    </li>


</ul>

<!-- <!-- Modal -->
<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">手机绑定</h4>
      </div>
      <div class="modal-body">
      
       -->
      
      
 <%--  <form>
  
  <div class="form-group">
    <label for="exampleInputEmail1">原手机手机号码</label>
    <input type="text" class="form-control" id="oldphone" value="${user.phoneNumber}" disabled="disabled"></br>
    <button type="button" class="btn btn-info">获取验证码</button>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">验证码</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="验证码">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">需要绑定的手机号码</label>
    <input type="text" class="form-control" id="oldphone" name="phoneNumber"></br>
    <button type="button" class="btn btn-info">获取验证码</button>
  </div>
  
   <div class="form-group">
    <label for="exampleInputPassword1">验证码</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="验证码">
  </div>
  
  
  <button type="submit" class="btn btn-default">完成</button>
</form>




      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary">确定</button>
      </div>
    </div>
  </div>
</div> --%>

</body>
</html>