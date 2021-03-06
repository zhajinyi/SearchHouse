<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>


    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
#title{color: #e96c1f;}
        #h1 {font-size: 20px;}
        #phonebind-div{
            width: 815px;
            height: 40px;
            margin-top:40px;
            border-bottom:1px;
            
        }
        .content-li{
            font-size: 20px;
            display: inline;
            margin-right: 80px;
            }
        #phone-step-1{
            
            margin-top: 50px;
            }
        #bindless{
            width: 100px;
            }
            #contenttitle-ul{
            width:600px;
            border-bottom:1px solid #2C2255;
            }
          
</style>
<script>
$(document).ready(function(){
	
	$("#bindless").attr("disabled", true);
	
	
	$("#wsx").click(function(){
		
		if($("#newphone").val()!=""&&$("#newphone").val().match(/^1[34578]\d{9}$/)){
			$("#spphone").hide();
			var xmlhttp = new XMLHttpRequest();
	        var phonevalue = $("#newphone").val();
	        
	        xmlhttp.open("POST","${pageContext.request.contextPath }/sendPhone?phoneNumber="+ phonevalue, true);
	        xmlhttp.send();
		}else{
			$("#spphone").css("color","red");
			$("#spphone").text("手机号错误！");
		}
		/*  */
	});
	$("#exampleInputPassword1").blur(function(){
		var xmlhttp = new XMLHttpRequest();
		var codevalue = $("#exampleInputPassword1").val();
		xmlhttp.open("POST","${pageContext.request.contextPath }/code?code="+ codevalue, true);
		xmlhttp.send();
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				if (xmlhttp.responseText == 1) {
					$("#spcode").css("color","#00F06F");
					$("#spcode").text("验证码正确！");
					$("#bindless").attr("disabled", false);
				} else {
					$("#spcode").css("color","red");
					$("#spcode").text("验证码错误！");
				}
			}
		}
		
	})
	
	
})


</script>
</head>
<body>
<div id="title">
    <h1 id="h1">手机绑定</h1>
</div>

<div id="phonebind-div">
    <ul id="contenttitle-ul">

        <li class="content-li" ><span class="step-style" >1</span>&nbsp;解除绑定</li>
        <li class="content-li"style="color: #e96c1f"><span class="step-style"style="color: #e96c1f">2</span>&nbsp;绑定手机</li>
        <li class="content-li"><span class="step-style">3</span>&nbsp;完成</li>

    </ul>
</div>


<div id="phone-step-1" class="col-md-8">

    <form  action="${pageContext.request.contextPath}/updatephone" class="form-horizontal ">
<div class="form-group">
        <div class="form-inline">
            <label for="oldphone" class="col-sm-2 control-label">新手机号码</label>
            <div class="col-md-2">
                <input type="text" name="phoneNumber" style="width: auto;" class="form-control col-md-2" id="newphone" >
                <button id="wsx" type="button" class="btn btn-info" style="background-color:#00F06F;">获取验证码</button>
            </div>
        </div>
        
</div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      
        <label>
         <span id="spphone"></span>
        </label>
      
    </div>
  </div>

        <div class="form-group">
            <label for="exampleInputPassword1" class="col-sm-2 control-label">验证码</label>
            <div class="col-md-2 form-inline">
                <input type="text" style="width: auto;" class="form-control col-md-2" id="exampleInputPassword1" placeholder="验证码">
            <span id="spcode"></span>
            </div>
        </div>
</br></br></br>
<input type="hidden" name="userId" value="${user.userId }">
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" id="bindless" class="btn btn-primary btn-lg" disabled="disabled">重新绑定</button>
            </div>
        </div>
    </form>


</div>
</body>
</html>