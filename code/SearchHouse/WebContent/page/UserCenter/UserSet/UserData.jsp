<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.gaobo.pojo.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人资料</title>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>


    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <script src="<%=basePath%>/page/UserCenter/address/js/distpicker.data.js"></script>
    <script src="<%=basePath%>/page/UserCenter/address/js/distpicker.js"></script>
    <script src="<%=basePath%>/page/UserCenter/address/js/main.js"></script>
    <script>
    
        $(document).ready(function(){
        	     
        	var str="${user.address}";
            var strs = new Array();
            strs=str.split("-");
            $('#province1').val(strs[0]);
            $('#province1').trigger("change");
            $('#city1').val(strs[1]);
            $('#city1').trigger("change");
            $('#district1').val(strs[2]);
            
            $("#address2").val(strs[3]);
        	
        	var birth=$("#birth").val();
        	
        	 $("#birthday").attr("value",birth);

            $("li").each(function(){
                //每个Li添加点击事件
                $(this).click(function(){

                    var obj1= $(this);

                    //遍历Li;如果Li不是当前元素，移除
                    //原来样式全删除
                    $("li").each(function(){
                        if(obj1!=$(this)){
                            $(this).removeClass("active");
                        }
                    });

                    $(this).addClass("active");
                });


            });

            //点击li:其他元素移除class;

            //当前元素：添加class
        });
        
    </script>

    

    <style>
        #title{color: #e96c1f;
        }
        #h1{
            font-size: 20px;
        }
        .title2{
            width: 50%;
            color: #666666;
            /*border-bottom:solid 1px #666666;*/
            margin-left: 2%;
        }
        .h2{
            font-size: 16px;
        }
        .form-control-static{
        display:inline;
        }
      
        .cols{
        
        display: inline-block;
        }
        
        .form-control{
          display: inline;
        }
         #form-phone{
            position: relative;
            display: inline-block;
        }
        #form-phone-input{
            height: 40px;
            line-height: 40px;
        }
        #form-phone-button{
            position: absolute;
            top: 50%;
            right: 8px;
            margin-top: -11px;
        }
        #province1{
        
        margin-left:14px;}
       

    </style>

</head>
<body>
<div id="title">
    <h1 id="h1">个人资料</h1>
</div>

<div class="title2">
    <h2 class="h2"><strong>头像修改</strong></h2>
</div>

<ul class="nav nav-tabs" style="margin-top: 1%;margin-left: 2%">
    <li role="presentation" class="active"><a target="iframe-img" href="<%=basePath%>/page/UserCenter/UserSet/UserImg/LoacationImg.jsp" >本地上传</a></li>
    <li role="presentation" ><a target="iframe-img" href="<%=basePath%>/page/UserCenter/UserSet/UserImg/SystemImg.jsp" >系统头像</a></li>
</ul>
<div>
    <iframe id="ContainerFrame"  name="iframe-img"  src="<%=basePath%>/page/UserCenter/UserSet/UserImg/LoacationImg.jsp" scrolling="no"
            frameborder="0" width="815px" height="220px"></iframe>
</div>


<!-- <div class="title2" style="border-bottom:solid 1px #666666;">
    <h2 class="h2"><strong>修改联系方式</strong></h2>
</div> -->

<%-- <form class="form-horizontal">

    <!--用户名-->
    </br>
    <div class="form-group">
        <label class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-10">
        <span class="form-control-static">${user.userId}</span>
        </div>
    </div>

    <!--手机号-->
    <div class="form-group">
            <label class="col-sm-2 control-label">手机号</label>
            <div class="col-sm-10">
               <span class="form-control-static">${user.phoneNumber}</span>
                <button type="button" class="btn btn-default" aria-label="Left Align" data-toggle="modal" data-target="#myModal">
                <span class="glyphicon glyphicon-repeat" aria-hidden="true" style="color: green;"></span>
            </button>
            
               </div>
               </div>
                &nbsp;&nbsp;&nbsp;
         
        
        
      
        <%=user.getTelNumber() %>
        <% UserInfo user=(UserInfo)session.getAttribute("user");%>
        
    <!--传真-->
    <div class="form-group">
        <label class="col-sm-2 control-label">座机号码</label>
        <div >
            <p class="form-control-static">
         <c:choose>
                <c:when test="${empty user.telNumber}">
         <div class="col-xs-4">
            <input id="telNumber" type="text" class="form-control" placeholder="座机号码（可选）">
                </div>&nbsp;&nbsp;&nbsp;
                <button type="button" class="btn btn-default" aria-label="Left Align">
                <span class="glyphicon glyphicon-ok" aria-hidden="true" style="color: green;"></span>
            </button>
                
                </c:when> 
                <c:otherwise>${user.telNumber}
                <button type="button" id="button-telNumber"class="btn btn-default" aria-label="Left Align">
                <span class="glyphicon glyphicon-repeat" aria-hidden="true" style="color: green;"></span>
            
            </button></c:otherwise>
                
         </c:choose></p>&nbsp;&nbsp;&nbsp;
            
        </div>
    </div>
 
    <!--邮箱验证-->
    <div class="form-group">
        <label class="col-sm-2 control-label">邮箱</label>
        <div class="col-sm-10">
            <p class="form-control-static"><c:choose>
                <c:when test="${empty user.userMail}"><div class="col-xs-2">
            <input id="userMail" type="text" class="form-control" placeholder="邮箱绑定">
            <button type="button" class="btn btn-default" aria-label="Left Align"  data-toggle="modal" data-target="#myModal-email">
                <span class="glyphicon glyphicon-ok" aria-hidden="true" style="color: green;"></span>
            </button>
                 </div>
   </c:when> <c:otherwise>${user.userMail}</c:otherwise>   </c:choose></p>&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-default" aria-label="Left Align"  data-toggle="modal" data-target="#myModal-email">
                <span class="glyphicon glyphicon-repeat" aria-hidden="true" style="color: green;"></span>
            </button>
        </div>
    </div>
    
<!-- 邮箱验证模态框 -->   
    <div class="modal fade" id="myModal-email" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

</form> --%>



<div class="title2" style="border-bottom:solid 1px #666666;">
    <h2 class="h2"><strong>修改个人信息</strong></h2>
</div>
<form class="form-horizontal" action="<%=basePath%>/updateUserInfo/">
<input type="hidden" name="userId" value="${user.userId}">
    <!--昵称-->
    </br>
    <div class="form-group">
        <label for="userName" class="col-sm-2 control-label">昵称</label>
        <div class="col-xs-2">
            <input name="userName" type="text" class="form-control" value="${user.userName}" placeholder="输入昵称">

        </div>
    </div>

   <!--性别-->
    <div class="form-group">
        <label for="userSex" class="col-sm-2 control-label">性别</label>
        <div class="col-xs-2">
        <label class="radio-inline">
            <input type="radio" name="userSex" id="userSex" value="男" ${user.userSex=='男'?"checked":""}>男
        </label>
            <label class="radio-inline">
                <input type="radio" name="userSex" id="userSex" value="女" ${user.userSex=='女'?"checked":""}> 女
            </label>
        </div>
    </div>

<input type="hidden" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${user.userBirthday}" />" id="birth">

<!--出生日期-->
    <div class="form-group">
        <label for="birthday" class="col-sm-2 control-label" value="<fmt:formatDate type="date" 
            value="${user.userBirthday}" />" >出生日期</label>
        
        
        <div class="col-xs-2">
            <label class="birthday-inline">
                <input type="date" name="userBirthday" id="birthday" style="width: 200px;
                height: 35px;border-radius: 4px;border:1px solid #DBDBDB;" value="">
            </label>
        </div>
    </div>

 <!--省市区-->
    <div class="form-group" data-toggle="distpicker">
    <div class="form-inline">
    <label for="address" class="col-sm-2 control-label">常住地址</label>
    
    <label class="sr-only" for="province1" name="province1">省</label>
    <select class="form-control" id="province1" required="true"></select>
    
    <label class="sr-only" for="city1" name="city1" >市</label>
    <select class="form-control" id="city1" required="true"></select>
    
    <label class="sr-only" for="district1" name="area">区</label>
    <select class="form-control" id="district1" required="true"></select>
      
     
    
      </div>
      </div>
      
      
      
<!--详细地址-->
    <div class="form-group" >
        <label for="address2" class="col-sm-2 control-label">详细住址</label>
        <div class="col-xs-4">
            <input id="address2" type="text" class="form-control"  placeholder="输入地址" name="address4" />
        </div>
    </div>
    <input id="address" name="address" type="hidden">
  
<!--提交按钮-->
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button id="qwer" type="submit" class="btn btn-default" style="color: white;background-color:#5CB85C;
            width: 130px; height: 50px;font-size: 20px">提交</button>
        </div>
    </div>
  <script>
      $("#qwer").click(function(){
    	var address1=$("#province1 option:selected");
    	var address2=$("#city1 option:selected");
    	var address3=$("#district1 option:selected");
    	var address4=$("#address2");
    	$("#address").val(address1.val()+"-"+address2.val()+"-"+address3.val()+"-"+address4.val());
    	
    	
    	
    }) 
    
   
    
    </script>

</form>





</body>
</html>