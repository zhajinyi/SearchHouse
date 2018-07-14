<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的收藏</title>

<%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <style>
        #title{

            color: #e96c1f;
        }
        #h1{
            font-size: 20px;}


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
<div id="title">
    <h1 id="h1">我的收藏</h1>
</div>

<ul class="nav nav-tabs">
    <li role="presentation" class="active" ><a href="${pageContext.request.contextPath }/listcollect1" target="iframe_b">我的收藏</a></li>
    <li role="presentation" ><a href="${pageContext.request.contextPath }/listcollect2" target="iframe_b">谁收藏了我的信息</a></li>
    <li role="presentation"><a href="${pageContext.request.contextPath }/listcollect3" target="iframe_b">浏览过的信息</a></li>
</ul>
<div><iframe id="ContainerFrame" name="iframe_b" src="${pageContext.request.contextPath }/listcollect1" scrolling="no"
             frameborder="0" width="815px" height="2000px">

</iframe>
</div>




</body>
</html>