<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>密码修改完成</title>
 <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
 <script language="javascript" type="text/javascript">
        var i = 3;
        var intervalid;
        intervalid = setInterval("fun()", 500);
        function fun() {
            if (i == 0) {
            	top.location.href = "<%=basePath%>/page/login.jsp";
                clearInterval(intervalid);
            }
            document.getElementById("mes").innerHTML = i;
            i--;
        }

    </script>
</head>
<body>
密码修改成功
<div id="phone-step-1">
    <span style="font-size: 25px">密码修改成功！<span id="mes" >3</span>秒后转至登录页面。<a href="<%=basePath%>/page/login.jsp">立即跳转</a></span>

</div>
</body>
</html>