<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>搜趣房</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">


    <!-- favicon and touch icons -->
    <link rel="shortcut icon" href="<%=basePath%>/assets/images/favicon.png">

    <!-- Bootstrap -->
    <link href="<%=basePath%>/cssY/style.css" rel="stylesheet"type="text/css" media="all" />
    <link href="<%=basePath%>/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=basePath%>/plugins/slick/slick.css" rel="stylesheet">
    <link href="<%=basePath%>/plugins/slick-nav/slicknav.css" rel="stylesheet">
    <link href="<%=basePath%>/plugins/wow/animate.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/css/theme.css" rel="stylesheet">
<!-- 加入对比的点击事件 -->
<script language="JavaScript" type="text/JavaScript">
		var count=1;
		function toggle(targetid,houseId){
			if (document.getElementById){
				target=document.getElementById(targetid);
				if (target.style.display=="none"){
					target.style.display="block";
				}else {
					target.style.display="block";
				}
			}
			
			if(count<=4){
			 //xmlhttp对象
	        var xmlhttp;
			if (window.XMLHttpRequest) {
				//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
				xmlhttp = new XMLHttpRequest();
			} else {
				// IE6, IE5 浏览器执行代码
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					
					var compare = JSON.parse(xmlhttp.responseText);
					
						$("#FY1").append("<div style='width=90%;height=auto;margin-left:5%;text-align:left'><a href='${pageContext.request.contextPath}/getHouseById?houseId="+compare.house.houseId+"'><input type='hidden' name='houseId' style='width:10px' value='"+compare.house.houseId+"'/>"+count+"、"+compare.house.houseName+"&nbsp;"+compare.house.houseArea+"㎡&nbsp;"+compare.house.housePrice+"元/月</a></div>");
						count++;
				}
			}
			xmlhttp.open("GET", "${pageContext.request.contextPath}/addCompare?houseId="+houseId, true);
			xmlhttp.send();
			}else{
				alert("最多可选4项");
			}
	    }
		
		function toggle1(targetid){
			if (document.getElementById){
				target=document.getElementById(targetid);
				if (target.style.display=="block"){
					target.style.display="none";
				}
			}
		}
		function kaishiDB(){
			var index = $("#FY1").children("div").length ;
			if(index<2){
				alert("对比项不能少于两条");
			}else{
				window.location="${pageContext.request.contextPath}/duiBi";
			}
		}
		function qingkong1() {
			$("#FY1").empty();
		}
	</script>
	<style type="text/css">
		#TC1{
		  margin-top: 10%;
		  margin-left: 75%;
		  border: 1px solid white;
		  height:auto;
		  width:300px;
		  display:none;
		  position: absolute;
		  top:600px;
		  z-index: 9999;
		  background-color: white;
		}
		#YC{
		  width: 19%;
		  text-align: center;
		  border: 1px solid white;
		  background-color: gray;
		  display: inline-block;
		}
		
		#DB{
		  width: 78%;
		  text-align: center;
		  border: 1px solid white;
		  background-color: gainsboro;
		  display: inline-block;
		}
		
		#XX1{
		  text-align: center;
		}
		
		#FY1{
		  width: 100%;
		  height: auto;
		  border: 1px solid black;
		}
		
		#KS1{
		  text-align: center;
		  width: 48%;
		  display: inline-block;
		}
		
		#QK1{
		  text-align: center;
		  display: inline-block;
		  width: 48%;
		}
		#YC:hover{
		  cursor: pointer;
		}
		
		.DBa{
		  text-decoration: none;
		}
		
		#QK1:hover{
		  cursor: pointer;
		  border: 1px solid black;
		  font-size: 15px;
		}
		#KS1:hover{
		  cursor: pointer;
		  border: 1px solid black;
		  font-size: 15px;
		}
		#DBtbl{
		  width: 90%;
		  height: auto;
		  margin: 110px 0 0 70px;
		}
		#FHlist{
		  width: 100%;
		  height: 50px;
		  line-height: 50px;
		  background-color: whitesmoke;
		}
		#DBtbl_main{
		  width: 100%;
		  height: auto;
		  background-color: whitesmoke;
		  margin-top: 1%;
		}
		#tblDB{
		  width: 100%;
		}
		.DBxx{
		  text-align: center;
		  line-height: 100%;
		}
		.DBtr{
		  width: 100%;
		  height: 50px;
		  text-align: center;
		}
		.deleteDB{
		  text-align: center;
		  line-height: 100%;
		}
		.closeDB{
		  margin-left: 15%;
		  display: inline;
		}
		
		#DBliebiao{
		  width: 40px;
		  height: 25px;
		}
		#center1{
		  margin-left: -150px;
		}
		.wrap {
		  margin: 0 0 0 5%;
		  text-align: center;
		  width: 100px;
		  height: 30px;
		  border: 1px solid gainsboro;
		  line-height: 30px;
		  display: inline-block;
		}
		.wrap:hover{
		  border: 1px solid yellowgreen;
		  background-color: whitesmoke;
		  cursor: pointer;
		}
	</style>
	<style type="text/css">
	/* 标题栏的颜色改变 */
	/* 	.header{
				
				background-color:#707070;
			}
     */
     #shouye{
     margin-left: 20px;
     position: relative;
     cursor:pointer;
     }
     #pingpai{
      margin-left: 20px;
     position: relative;
     cursor:pointer;
     }
      .caption{
	position: absolute;

	top: 25%;
  	left: 50%;
}
.search11{
	width: 446px;
	height: 52px;
	background-color:white;
	color:#343434;
	font-size: 24px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -27px 0 0 -296px;
	border: 1px solid black;
	border-radius: 10px;
	padding: 0 10px;
}
.button11{
	width: 120px;
	height: 54px;
	background-color:white;
	font-size: 24px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -28px 0 0 155px;
	border: 1px solid black;
	border-radius: 10px;
	outline: none;
	cursor: pointer;
	color:#337ab6 ; 
}

.a1{
	text-decoration:none;
}

.button12{
	width: 120px;
	height: 54px;
	background-color:white;
	color:#343434;
	font-size: 24px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -28px 0px 0 280px;
	border: 1px solid black;
	border-radius: 10px;
	outline: none;
	cursor: pointer;
}
 
 .renzheng{
    width: 10%;
	height: 4%;
 }
</style>
	
	 <script type="text/javascript">
   function fabu() {
		var usr="${user}";
		
	     if(usr==null||usr==""){
			alert("请先登录");
		window.location.href="page/login.jsp";
			return false;
		}else{
			//若是登录后直接调整到          href="${pageContext.request.contextPath}/addHouseInit"
			 window.location.href="${pageContext.request.contextPath}/addHouseInit";  
		}
	}
   </script>
</head>
<body class="listing-template">
<!-- 房源对比的弹窗 -->
	<div id="TC1">
		<div id="YC" onclick="toggle1('TC1')">隐藏</div>
		<div id="DB">房源对比</div>
		<div id="XX1">
			<p>您浏览过的房源(最多勾选4条)</p>
			<div id="FY1"></div>
		</div>
		<div id="KS1">
			<div class="DBa" id="duibi" onclick="kaishiDB()">开始对比</div>
		</div>
		<div id="QK1">
			<div class="DBa" id="qingkong" onclick="qingkong1()">全部清空</div>
		</div>
	</div>
<div id="page-loader">
    <div class="loaders">
        <img src="<%=basePath%>/assets/images/loader/3.gif" alt="First Loader">
        <img src="<%=basePath%>/assets/images/loader/4.gif" alt="First Loader">
    </div>
</div>

<div class="header">
		<div class="container">
			<div class="logo">
				<h1>
					<a href="<%=basePath%>/index">搜趣房</a>
				</h1>
			</div>
			<!--//logo-->
			<div class="top-nav">
				<ul class="right-icons">
				<c:choose>
				<c:when test='${empty user.userId}'>
				<li><a  href="${pageContext.request.contextPath}/page/login.jsp"><i class="glyphicon glyphicon-user"> </i>登录</a>  </li>
				<li><a  href="${pageContext.request.contextPath}/page/register.jsp">注册</a></li>
				</c:when>
				<c:otherwise>
				<li><a href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserCenter.jsp"><i class="glyphicon glyphicon-user"></i>${user.userId}</a></li>
				</c:otherwise>
				</c:choose>
				<li><a href="<c:choose><c:when test='${empty user.userId}'>${pageContext.request.contextPath}/page/login.jsp</c:when><c:otherwise>${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserCenter.jsp</c:otherwise></c:choose>">个人中心</a> </li>
				<li><a href="<c:choose><c:when test='${empty user.userId}'>${pageContext.request.contextPath}/page/login.jsp</c:when><c:otherwise>${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserCenter.jsp</c:otherwise></c:choose>">帮助中心</a> </li>
				</ul>
				<div class="clearfix"></div>
				
			</div>
		</div>
		<div class="clearfix"></div>
	</div>


<div id="site-banner" class="text-center clearfix"></div>
<div class="banner1">
	<div class="caption">
		<div class="center1">
			<form action="${pageContext.request.contextPath}/getHouseByKey">
				<input type="hidden" name="pageNo" value=1 />
				<input type="text"  class=" search11" placeholder="请输入要查询的需求" name="keyName"/>
				<input type="submit" class="button11" value="搜  索" />
			</form>
			<button class="button12"><a class="a1"  onclick="fabu()">免费发布</a> </button>
		</div>
	</div>
</div>
<section id="property-listing">
    <header class="section-header text-center">
        <div class="container">
            <h2 class="pull-left" style="color:#FFCC99">品牌公寓</h2>
            <h4 class="pull-left" id="shouye"><a href="${pageContext.request.contextPath}/index">首页</a></h4>
            <h4 class="pull-left" id="pingpai"><a href="${pageContext.request.contextPath}/houseall?pageNo=1">全部房源</a></h4>
        </div>
    </header>
    <div class="container section-layout">
        <div class="row">
        <c:forEach items="${houses}" var="houseType">
            <div class="col-lg-4 col-sm-6 layout-item-wrap" >
                        <a class="clearfix zoom" >
                        	<img data-action="zoom" src="<%=basePath%>/imagess/${houseType.photos[0] }" alt="Property Image" style="height:250px">  
                        </a>
                    <div>
                        <header>
                            <div>
                                <h6 class="entry-title" style="width: 100%;height: 20px;"><a href="<%=basePath%>/getHouseById?houseId=${houseType.houseId}">${houseType.houseName}</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i> ${houseType.locationName} </span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥${houseType.housePrice}" style=" padding-bottom:0px ;"><strong>￥${houseType.housePrice}</strong>
                            </button>
                        </header>
                        <div class="property-meta clearfix">
                            <span>
                               <i class="fa fa-arrows-alt"></i>
                               ${houseType.houseArea}㎡  &nbsp; 
                               <c:choose>
                                <c:when test="${(houseType.userInfo.qualityRating).equals('个人') }"><img alt="" src="<%=basePath%>/imagess/idcard.png" class="renzheng"><span style="color: #900000">个人</span></c:when>
                                <c:when test="${(houseType.userInfo.qualityRating).equals('商户') }"><img alt="" src="<%=basePath%>/imagess/idbusiness.png" class="renzheng"><span style="color: #900000">商家</span></c:when>
                                <c:otherwise></c:otherwise>
                               </c:choose>
                               
                             </span>
                             <div class="wrap" onclick="toggle('TC1',${houseType.houseId})">+加入对比  </div> 
                        </div>
                    </div>
             </div>
            </c:forEach>
        </div>
        <ul id="pagination" class="text-center clearfix">
        
         <li><a href="/SearchHouse/houseType?pageNo=1">首页</a></li>
				<li><a href='/SearchHouse/houseType?pageNo=
				<c:choose><c:when test="${page.pageNo==1}">1</c:when>
                          <c:otherwise>${page.pageNo-1}</c:otherwise>
		        </c:choose>'>«</a></li>
		        <li>${page.pageNo }</li>
				<li><a href='/SearchHouse/houseType?pageNo=
				<c:choose><c:when test="${page.pageNo==page.totalPage}">${page.totalPage }</c:when>
		                  <c:otherwise>${page.pageNo+1}</c:otherwise>
		        </c:choose>'>»</a></li>

				<li><a href="/SearchHouse/houseType?pageNo=${page.totalPage }">尾页</a></li>
				
				
				<li>共 ${page.totalPage } 页</li>
				<br>

				<li class="li1">
					<form action="/SearchHouse/houseType" onsubmit="return check()">
					输入需要跳转的页面数<input type="text" name="pageNo" style="width: 30px">
					<input type="submit" value="跳转">
					</form>
			</li>

        </ul>
    </div>
</section>
<footer id="footer" style="margin-top:18%">
    <div class="site-footer"></div>
    <div class="site-footer-bottom">
        <div class="container" style="margin-left: 34%">
            <p class="copyright pull-left wow slideInRight">Copyright &copy; 2017.Company name All rights reserved.<a
                    target="_blank" href="http://sc.chinaz.com/moban/">搜趣房</a></p>
        </div>
    </div>
</footer>
<a href="#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=basePath%>/assets/js/jquery.min.js"></script>
<script src="<%=basePath%>/assets/js/jquery.migrate.js"></script>
<script src="<%=basePath%>/assets/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/plugins/slick-nav/jquery.slicknav.min.js"></script>
<script src="<%=basePath%>/plugins/slick/slick.min.js"></script>
<script src="<%=basePath%>/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="<%=basePath%>/plugins/tweetie/tweetie.js"></script>
<script src="<%=basePath%>/plugins/forms/jquery.form.min.js"></script>
<script src="<%=basePath%>/plugins/forms/jquery.validate.min.js"></script>
<script src="<%=basePath%>/plugins/modernizr/modernizr.custom.js"></script>
<script src="<%=basePath%>/plugins/wow/wow.min.js"></script>
<script src="<%=basePath%>/plugins/zoom/zoom.js"></script>
<script src="<%=basePath%>/plugins/mixitup/mixitup.min.js"></script>
<!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places"></script>--->
<script src="<%=basePath%>/plugins/whats-nearby/source/WhatsNearby.js"></script>
<script src="<%=basePath%>/assets/js/theme.js"></script>
</body>
</html>