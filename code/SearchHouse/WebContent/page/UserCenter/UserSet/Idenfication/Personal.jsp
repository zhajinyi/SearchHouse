<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Personal</title>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>


    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">

    <style>

        input{
            color: white;background-color:#5CB85C;
            width: 130px;height: 50px;font-size: 20px;
            border: solid 0px;


        }
        #img-div{
            margin-left: 4%;
            margin-top: 4%;
            float: left;
        }
        #img-char{
            margin-top: 7%;
            width: 180px;
            float: left;
            margin-left: 150px;

        }
        #MobileButton{
            width: 10%;
            height: 40px;
            float: left;
            margin-top: 7.54%;
            margin-left:10%;
        }

    </style>
    
</head>
<body>



<!--个人认证图片-->
<div id="img-div"><img src="<%=basePath %>/page/UserCenter/img/ID card.png" height="120" width="120"/></div>

<!--个人认证描述-->

 <c:if test="${qualityRa=='个人' }">
    <div id="img-char">
       <p class="User-p">个人已认证</p>
    </div>
</c:if>

<c:if test="${qualityRa!='个人' }">
	<div id="img-char">
	    
	    
	    <p class="User-p">需清晰的手持身份证照片</p>
	    <p class="User-p">3-5个工作日完成认证</p>
	   
	   
	</div> 

	<div id="MobileButton"><input type="button" id="button-personal" value="绑定"></div>
 </c:if>




<script>
$("#button-personal").click(function(){
	if(${user.qualityRating=='商户'}){
		alert("已认证商户");
	}else{
		window.location.href="<%=basePath%>/page/UserCenter/UserSet/Idenfication/Personal2.jsp"
	}
})
</script>
</body>
</html>