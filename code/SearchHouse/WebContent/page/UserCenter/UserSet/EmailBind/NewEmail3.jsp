<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>


    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<style>
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
            #phone-step-1{
            margin-top: 100px;
            margin-left: 20px;

        }
        a{
            text-decoration:none;
        }
        a:hover{
        text-decoration:none;
        }
            
          
</style>
 <script language="javascript" type="text/javascript">
        var i = 5;
        var intervalid;
        intervalid = setInterval("fun()", 500);
        function fun() {
            if (i == 0) {
                window.location.href = "${pageContext.request.contextPath}/page/UserCenter/UserSet/UserData.jsp";
                clearInterval(intervalid);
            }
            document.getElementById("mes").innerHTML = i;
            i--;
        }

    </script>

</head>
<body>
<div id="title">
    <h1 id="h1">邮箱绑定</h1>
</div>
<div id="phonebind-div">
    <ul id="contenttitle-ul">

        <li class="content-li" ><span class="step-style" >1</span>&nbsp;解除绑定</li>
        <li class="content-li"><span >2</span>&nbsp;绑定邮箱</li>
        <li class="content-li" style="color: #e96c1f"><span class="step-style">3</span class="step-style"style="color: #e96c1f">&nbsp;完成</li>

    </ul>
</div>

<div id="phone-step-1">
    <span style="font-size: 25px">绑定成功！<span id="mes">5</span>秒后转至设置中心。<a href="${pageContext.request.contextPath}/page/UserCenter/UserSet/UserData.jsp">立即跳转</a></span>

</div>

</body>
</html>