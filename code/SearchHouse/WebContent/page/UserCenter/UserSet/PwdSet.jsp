<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PwdSet</title>
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
    .warning{
        color: red;
    }
</style>

<script type="text/javascript">


$(function(){
	  $("#inputPassword1").blur(function(){
		  
		  var pwd=$(this).val();
		  
		  if(pwd!="${user.userPassword}"){
			  var tips="您输入的密码错误！";
			  $("#oldpwd").show();
			  $("#oldpwd").html(tips);
			  $("#inputPassword2").attr("disabled", true);
			  $("#inputPassword3").attr("disabled", true);
			  $("#pwdsubmit").attr("disabled", true);
		  }else{
			  $("#oldpwd").hide();
			  $("#inputPassword2").attr("disabled", false);
			  $("#inputPassword3").attr("disabled", false);
			  $("#pwdsubmit").attr("disabled", true);
		  }
		 
	  
	  })
		
	      	
  $("#inputPassword2").click(function(){
			var tips2 ="密码长度应为6~16个字符！";
			$("#newpwd").html(tips2);
			$("#inputPassword2").blur(function(){
				var pwd2=$("#inputPassword2").val();
			
				if (/^[0-9a-zA-Z_]{6,15}$/.test(pwd2)){
					$("#newpwd").hide();
					 $("#inputPassword3").attr("disabled", false);
					 $("#pwdsubmit").attr("disabled", true);
				}else{
					$("#newpwd").show();
					 $("#newpwd").html("新密码输入有误，密码长度应为6~16个字符！");
					 $("#inputPassword3").attr("disabled", true);
					 $("#pwdsubmit").attr("disabled", true);
				}
				
			})
			
		})
		
		$("#inputPassword3").change(function(){
			var pwd1=$("#inputPassword2").val();
			var pwd2=$("#inputPassword3").val();
		if(pwd1==pwd2&&pwd1!=""){
			$("#pwdrepeat").show();
			$("#pwdrepeat").html("输入正确！");
			$("#pwdsubmit").attr("disabled", false);
			}else{
				$("#pwdrepeat").show();
				$("#pwdrepeat").html("两次输入的密码不一致！");
				$("#pwdsubmit").attr("disabled", true);
			}
		})
})


</script>
</head>
<body>
<div id="title">
    <h1 id="h1">密码设置</h1>
</div>

<div>
    <form class="form-horizontal" action="${pageContext.request.contextPath }/updatePwd">
<!--用户名-->
        <div class="form-group">
            <label  class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-2">
                <p class="form-control-static">${user.userId}</p>
            </div>
        </div>
<!--旧密码-->
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label"><span class="warning">*</span>旧密码</label>
            <div class="col-sm-4">
                <input type="password" class="form-control" id="inputPassword1" placeholder="旧密码">
                <span id="oldpwd" style="color:red;"></span>
            </div>
        </div>
        
       <!--新密码-->
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label"><span class="warning">*</span>新密码</label>
            <div class="col-sm-4">
                <input type="password" class="form-control" id="inputPassword2" name="userPassword" placeholder="新密码">
                <span id="newpwd" style="color:red;"></span>
            </div>
        </div>
        <input type="hidden" name="userId" value="${user.userId}">

        <!--确认密码-->
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label"><span class="warning">*</span>确认密码</label>
            <div class="col-sm-4">
                <input type="password" class="form-control" id="inputPassword3" placeholder="确认密码">
                <span id="pwdrepeat" style="color:red;"></span>
            </div>
        </div>
        <span id="sppwd"><!-- style="color:red"--></span><br><label class="hvr-sweep-to-right">
				    

<!--提交按钮-->
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" id="pwdsubmit" class="btn btn-default" style="color: white;background-color:#5CB85C;
            width: 100px;height: 35px;font-size: 16px;text-align: center;">提交</button>
            </div>
        </div>

    </form>

</div>
</body>
</html>