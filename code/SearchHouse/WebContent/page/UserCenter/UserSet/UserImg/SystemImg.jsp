<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SystemImg</title>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>

    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.css">
    
    <style>
    .systemImg{
        list-style: none;
        display: inline;
        }
     img{width: 90px;
         height: 90px;}
     .systemImgBox{
            width: 90px;
            height: 90px;
            display: inline;
        }
        #defaultImgLiBorder{
            width: 120px;
            height: 120px;

            margin-top: 4%;
            margin-left: 30px;

        }
        #defaultImg{
            width: 120px;
            height: 120px;
        }
        .systemImgText{
            width: 180px;
            font-size: 16px;

        }
        .defaultImgUl{
            width: 570px;
            margin-left: -40px;
            border: none;
        }
        #ImgSelect{
            width: 53%;
            margin-top:10px;
        }
        #ImgInput{
            margin-left: 25px;
            margin-top: 20px;
            width: 100px;
            height: 50px;
        }
        .systemImgBox img{
            cursor: pointer;

        }

        #ImgSelect{
            float: left;
        margin-left: 50px;

        }
        #LeftSelect{
            width: 190px;
            height: 220px;
            float: left;
        }
        #imgsubmit{
        margin-left:15px;
    height: 30px;
    width: 100px;
    border:0px;
    background:#00F06F;
    color:white;
    border-radius:5px;
        }

    </style>
</head>
<body>
<script type="text/javascript">
    $(function () {
    	

        $(".systemImgBox img").bind("click",function () {

            var imgSrc = $(this).attr("src");
            

           /*  var img = "<img  src='"+imgSrc+"' alt=''style='height: 120px;width: 120px;' />"; */

            $("#defaultImg").attr("src",imgSrc);
           
            
            $("#userPhoto").attr("value",$("#defaultImg")[0].src);
            
        })
       
        
    })

</script>
<form action="${pageContext.request.contextPath }/updatephoto">
<div id="LeftSelect">
    <div id="defaultImgLiBorder" class="col-md-12 defaultImgBorder userImgBorder">
        <img id="defaultImg" class="defaultImg userImg" src="<c:choose><c:when test='${empty user.userPhoto}'><%=basePath%>/HeadImg/1.gif</c:when><c:otherwise><%=basePath%>/img/${user.userPhoto}</c:otherwise>
        </c:choose>" alt="" style="width:120px;height:120px;border-radius:40%;">
    </div>
  

<div id="ImgInput" class="col-md-12">
<input type="hidden" name="userId" value="${user.userId}" />
<input type="hidden" name="userPhoto" id="userPhoto" />
<script type="text/javascript">


</script>
    <input type="submit"value="完成修改" id="imgsubmit"  >
</div>
</div>
</form>

<div id="ImgSelect" class="col-md-8">
    <div id="systemImgBox" class="systemImgBox">
        <span class="systemImgText">请选择喜欢的系统头像：</span>

        <ul id="defaultImgUl" class="defaultImgUl">

            <li id="systemImg1" class="systemImg">
                <div class="systemImgBox">
                    <img src="<%=basePath%>/HeadImg/1.gif" alt="">
                </div>
            </li>
            <li id="systemImg2" class="systemImg">
                <div class="systemImgBox">
                    <img src="<%=basePath%>/HeadImg/2.gif" alt="">
                </div>
            </li>
            <li id="systemImg3" class="systemImg">
                <div class="systemImgBox">
                    <img src="<%=basePath%>/HeadImg/3.gif" alt="">
                </div>
            </li>
            <li id="systemImg4" class="systemImg">
                <div class="systemImgBox">
                    <img src="<%=basePath%>/HeadImg/4.gif" alt="">
                </div>
            </li>
            <li id="systemImg5" class="systemImg">
                <div class="systemImgBox">
                    <img src="<%=basePath%>/HeadImg/5.gif" alt="">
                </div>
            </li>
            <li id="systemImg6" class="systemImg">
                <div class="systemImgBox">
                    <img src="<%=basePath%>/HeadImg/6.gif" alt="">
                </div>
            </li>

        </ul>
    </div>
</div>




</body>
</html>