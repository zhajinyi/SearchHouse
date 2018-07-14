<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人首页</title>
<%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<style>
       
        #User-img:hover{
            cursor: pointer;
        }
        #User-text:hover{
            cursor: pointer;
        }
        .col-md-12{margin-top: 90px;
        }
        #User-text{
        margin-left:200px;
        
        }
        
    </style>
    <script>
        $(document).ready(function(){

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
</head>
<body>


<div id="User-img" style="float: left;">
    <img src="<c:choose><c:when test='${empty user.userPhoto}'>../img/头像.png</c:when><c:otherwise><%=basePath%>/img/${user.userPhoto}</c:otherwise>
        </c:choose>" height="140" width="140" style="border-radius:40%"/>
</div>

<div id="User-text" style="margin-left: 70 px;">
    <h1><c:choose><c:when test="${empty user.userName}">${user.userId}</c:when><c:otherwise>${user.userName }</c:otherwise></c:choose></h1>
    <i><span class="glyphicon glyphicon-phone" aria-hidden="true"></span></i>
    <span>${user.phoneNumber}</span></br>
    <i><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></i>
    <span>${user.userMail}</span></br>
    <i><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span></i>
    <span>${user.address}</span></br>

</div> 




<!-- <div class="col-md-12">
    <ul class="nav nav-tabs">
    <li role="presentation" class="active"><a  target="iframe-message" href="Message/SYSMessage.jsp">系统通知</a></li>
    <li role="presentation" ><a target="iframe-message" href="Message/ToMessage.jsp">客户咨询</a></li>
    <li role="presentation"><a target="iframe-message" href="Message/MyMessage.jsp">我的咨询</a></li>
    </ul>
</div> -->

<!-- <div>
    <iframe name="iframe-message"id="ContainerFrame" src="Message/SYSMessage.jsp" scrolling="no"
            frameborder="0" width="815px" height="800px"></iframe>
</div> -->
<script>
$("#User-img,#User-text").click(function(){
	
	top.location.href="<%=basePath%>/page/UserCenter/UserSet/UserSet.jsp"
})
</script>
</body>
</html>