<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Merchant</title>
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
        #title2{
            margin-left: 200px;
            
        }
        #h1{font-size: 12px;}
         
        span{
            color: red;
            font-size: 10px;

        }


    </style>
    <script type="text/javascript">
    function check(){
        if($("[name='qualityName']").val()==""){
             $("#us").text("请输入商家姓名");
            return false;
         }else{
             $("#us").text("");
         }

         if($("[name='qualityCard']").val()==""){
             $("#mm").text("请输入身份证号码");
             return false;
         }else {
        	 var ss=$("[name='qualityCard']").val();
        	 var reg=/^[1-9]{1}[0-9]{14}$|^[1-9]{1}[0-9]{16}([0-9]|[xX])$/;
        	 if(!(reg.test(ss))){
        		 $("#mm").text("规范填写身份证号码");
        		 return false;
        	 }
         }
         
         
         if($("[name='qualityNum']").val()==""){
             $("#yx").text("请输入营业执照");
             return false;
         }else {
             $("#yx").text("");
         }
        
         return true;
    }
    
    </script>
    
    
</head>
<body>
<div id="title">
    <h1 id="h1">商家认证</h1>
</div>

<div id="title2">
    <h2 id="h2">填写信息</h2>
</div>

<form class="form-horizontal" action="${pageContext.request.contextPath }/quality" onsubmit="return check()">
    <div class="form-group">
        <label for="Sname" class="col-sm-2 control-label">商家姓名</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" id="Sname" name="qualityName" placeholder="请输入商家名称" style="width: 320px"><span id="us"></span>
        </div>
    </div>
    <div class="form-group">
        <label for="JIDcard" class="col-sm-2 control-label" >商家身份证号码</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" name="qualityCard" id="JIDcard" placeholder="请输入经营人身份证号码" style="width: 320px" ><span id="mm" ></span>
        </div>
    </div>
    
    <div class="form-group">
        <label for="ScardID" class="col-sm-2 control-label">营业执照号码</label>
        <div class="col-sm-2">
            <input type="password" class="form-control" name="qualityNum" id="ScardID" placeholder="请输入营业执照号码" style="width: 320px"><span id="yx"></span>
        </div>
    </div>
     <input type="hidden" name="userId" value="${user.userId}" />
     <input type="hidden" name="qualitResult" value="0" />
   
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">提交</button>
        </div>
    </div>
</form>
</body>

</html>