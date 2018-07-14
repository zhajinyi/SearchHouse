<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜趣房欢迎您</title>
<link href="${pageContext.request.contextPath}/cssY/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<%-- <script src="${pageContext.request.contextPath}/js/imgUp.js"></script> --%>

<script type="text/javascript">
	$(function() {
		var delParent;
		var defaults = {
			fileType : [ "jpg", "png", "bmp", "jpeg" ], // 上传文件的类型
			fileSize : 1024 * 1024 * 10
		// 上传文件的大小 10M
		};
		/*点击图片的文本框*/
		$("#files")
				.change(
						function() {
							var idFile = $(this).attr("id");
							var file = document.getElementById(idFile);
							var imgContainer = $(this).parents(".z_photo"); //存放图片的父亲元素
							var fileList = file.files; //获取的图片文件
							var input = $(this).parent();//文本框的父亲元素
							var imgArr = [];
							//遍历得到的图片文件
							var numUp = imgContainer.find(".up-section").length;
							var totalNum = numUp + fileList.length; //总的数量
							if (fileList.length > 10 || totalNum > 10) {
								alert("上传图片数目不可以超过10个，请重新选择"); //一次选择上传超过10个 或者是已经上传和这次上传的到的总数也不可以超过10个
							} else if (numUp < 10) {
								fileList = validateUp(fileList);
								for (var i = 0; i < fileList.length; i++) {
									var imgUrl = window.URL
											.createObjectURL(fileList[i]);
									imgArr.push(imgUrl);
									var $section = $("<section class='up-section fl loading'>");
									imgContainer.prepend($section);
									var $span = $("<span class='up-span'>");
									$span.appendTo($section);

									var $img0 = $("<img class='close-upimg'>")
											.on("click", function(event) {
												event.preventDefault();
												event.stopPropagation();
												$(".works-mask").show();
												delParent = $(this).parent();
											});
									$img0
											.attr("src",
													"http://localhost:8080/SearchHouse/img/a7.png")
											.appendTo($section);
									var $img = $("<img class='up-img up-opcity'>");
									$img.attr("src", imgArr[i]);
									$img.appendTo($section);
									var $p = $("<p class='img-name-p'>");
									$p.html(fileList[i].name)
											.appendTo($section);
									var $input = $("<input id='taglocation' name='taglocation' value='' type='hidden'>");
									$input.appendTo($section);
									var $input2 = $("<input id='tags' name='tags' value='' type='hidden'/>");
									$input2.appendTo($section);
								}
							}
							setTimeout(function() {
								$(".up-section").removeClass("loading");
								$(".up-img").removeClass("up-opcity");
							}, 450);
							numUp = imgContainer.find(".up-section").length;
							if (numUp >= 10) {
								$(this).parent().hide();
							}
						});

		$(".z_photo").delegate(".close-upimg", "click", function() {
			$(".works-mask").show();
			delParent = $(this).parent();
		});

		$(".wsdel-ok").click(function() {
			$(".works-mask").hide();
			var numUp = delParent.siblings().length;
			if (numUp < 10) {
				delParent.parent().find(".z_file").show();
			}
			delParent.remove();
		});

		$(".wsdel-no").click(function() {
			$(".works-mask").hide();
		});

		function validateUp(files) {
			var arrFiles = [];//替换的文件数组
			for (var i = 0, file; file = files[i]; i++) {
				//获取文件上传的后缀名
				var newStr = file.name.split("").reverse().join("");
				if (newStr.split(".")[0] != null) {
					var type = newStr.split(".")[0].split("").reverse()
							.join("");
					console.log(type + "===type===");
					if (jQuery.inArray(type, defaults.fileType) > -1) {
						// 类型符合，可以上传
						if (file.size >= defaults.fileSize) {
							alert(file.size);
							alert('您这个"' + file.name + '"文件大小过大');
						} else {
							// 在这里需要判断当前所有文件中
							arrFiles.push(file);
						}
					} else {
						alert('您这个"' + file.name + '"上传类型不符合');
					}
				} else {
					alert('您这个"' + file.name + '"没有类型, 无法识别');
				}
			}
			return arrFiles;
		}

	})

	$(function() {
		var delParent;
		var defaults = {
			fileType : [ "jpg", "png", "bmp", "jpeg" ], // 上传文件的类型
			fileSize : 1024 * 1024 * 10
		// 上传文件的大小 10M
		};
		/*点击图片的文本框*/
		$("#file")
				.change(
						function() {
							var idFile = $(this).attr("id");
							var file = document.getElementById(idFile);
							var imgContainer = $(this).parents(".z_photo"); //存放图片的父亲元素
							var fileList = file.files; //获取的图片文件
							var input = $(this).parent();//文本框的父亲元素
							var imgArr = [];
							//遍历得到的图片文件
							var numUp = imgContainer.find(".up-section").length;
							var totalNum = numUp + fileList.length; //总的数量
							if (fileList.length > 3 || totalNum > 3) {
								alert("上传图片数目不可以超过3个，请重新选择"); //一次选择上传超过2个 或者是已经上传和这次上传的到的总数也不可以超过10个
							} else if (numUp < 3) {
								fileList = validateUp(fileList);
								for (var i = 0; i < fileList.length; i++) {
									var imgUrl = window.URL
											.createObjectURL(fileList[i]);
									imgArr.push(imgUrl);
									var $section = $("<section class='up-section fl loading'>");
									imgContainer.prepend($section);
									var $span = $("<span class='up-span'>");
									$span.appendTo($section);

									var $img0 = $("<img class='close-upimg'>")
											.on("click", function(event) {
												event.preventDefault();
												event.stopPropagation();
												$(".works-mask").show();
												delParent = $(this).parent();
											});
									$img0
											.attr("src",
													"http://localhost:8080/SearchHouse/img/a7.png")
											.appendTo($section);
									var $img = $("<img class='up-img up-opcity'>");
									$img.attr("src", imgArr[i]);
									$img.appendTo($section);
									var $p = $("<p class='img-name-p'>");
									$p.html(fileList[i].name)
											.appendTo($section);
									var $input = $("<input id='taglocation' name='taglocation' value='' type='hidden'>");
									$input.appendTo($section);
									var $input2 = $("<input id='tags' name='tags' value='' type='hidden'/>");
									$input2.appendTo($section);
								}
							}
							setTimeout(function() {
								$(".up-section").removeClass("loading");
								$(".up-img").removeClass("up-opcity");
							}, 450);
							numUp = imgContainer.find(".up-section").length;
							if (numUp >= 10) {
								$(this).parent().hide();
							}
						});

		$(".z_photo").delegate(".close-upimg", "click", function() {
			$(".works-mask").show();
			delParent = $(this).parent();
		});

		$(".wsdel-ok").click(function() {
			$(".works-mask").hide();
			var numUp = delParent.siblings().length;
			if (numUp < 10) {
				delParent.parent().find(".z_file").show();
			}
			delParent.remove();
		});

		$(".wsdel-no").click(function() {
			$(".works-mask").hide();
		});

		function validateUp(files) {
			var arrFiles = [];//替换的文件数组
			for (var i = 0, file; file = files[i]; i++) {
				//获取文件上传的后缀名
				var newStr = file.name.split("").reverse().join("");
				if (newStr.split(".")[0] != null) {
					var type = newStr.split(".")[0].split("").reverse()
							.join("");
					console.log(type + "===type===");
					if (jQuery.inArray(type, defaults.fileType) > -1) {
						// 类型符合，可以上传
						if (file.size >= defaults.fileSize) {
							alert(file.size);
							alert('您这个"' + file.name + '"文件大小过大');
						} else {
							// 在这里需要判断当前所有文件中
							arrFiles.push(file);
						}
					} else {
						alert('您这个"' + file.name + '"上传类型不符合');
					}
				} else {
					alert('您这个"' + file.name + '"没有类型, 无法识别');
				}
			}
			return arrFiles;
		}

	})
</script>

<!--<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/script.js"></script>
<link href="${pageContext.request.contextPath}/cssY/styles.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/cssY/style1.css">
<link href="${pageContext.request.contextPath}/cssY/common.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/cssY/index.css"
	type="text/css" rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link href="${pageContext.request.contextPath}/cssY/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<style>
#FBxx {
	/*border: 1px solid black;*/
	width: 88%;
	margin-left: 6%;
	margin-top: 3%;
}

#BiaoDan {
	margin-left: 8%;
}

.BiaoTi {
	width: 150px;
	display: inline-block;
	text-align: right;
	margin-left: -5%;
}

#preview {
	height: 183px;
	width: 180px;
	border: 1px solid gray;
	margin-left: 9%;
}
</style>
</head>
<body>
	<div class="header">
		<div class="container">
			<!--logo-->
			<div class="logo">
				<h1>
					<a href="${pageContext.request.contextPath}/index">搜趣房</a>
				</h1>
			</div>
			<!--//logo-->
			<div class="top-nav">
				<ul class="right-icons">
					<li><a
						href="${pageContext.request.contextPath}/page/UserCenter/UserSet/UserSet.jsp"><i
							class="glyphicon glyphicon-user"></i>${user.userId}</a></li>
					<li><a
						href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserCenter.jsp">个人中心</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/page/UserCenter/UserInfo/UserCenter.jsp">帮助中心</a>
					</li>
				</ul>
				<div class="clearfix"></div>
				<!---pop-up-box---->

				<link href="${pageContext.request.contextPath}/cssY/popuo-box.css"
					rel="stylesheet" type="text/css" media="all" />
				<script
					src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js"
					type="text/javascript"></script>
			</div>
			<script>
				$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
						type : 'inline',
						fixedContentPos : false,
						fixedBgPos : true,
						overflowY : 'auto',
						closeBtnInside : true,
						preloader : false,
						midClick : true,
						removalDelay : 300,
						mainClass : 'my-mfp-zoom-in'
					});

				});
			</script>


		</div>
		<div class="clearfix"></div>
	</div>

	<div class="slider">
		<div class="banner1">
			<div class="caption">
				<div id="center1">
					<form action="${pageContext.request.contextPath}/getHouseByKey">
						<img id="img-logle"
							src="${pageContext.request.contextPath}/images/LOGLE.png">
						<input type="text" class="search11" name="keyName"
							placeholder="请输入要查询的需求">
						<button class="button11">
							<a href="houselist.jsp">搜索</a>
						</button>
						<button class="button11" id="fabu">
							<a href="houselist.jsp">免费发布</a>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<hr
		style="width: 1200px; height: 2px; margin: 100px 0 0 80px; background-color: black">

	<div id="FBxx">
		<!--  s -->
		<form id="BiaoDan"
			action="${pageContext.request.contextPath}/addHouse?userId=${user.userId}"
			enctype="multipart/form-data" method="post">
			<p>
				<strong>类别</strong>
			</p>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>出租方式&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<input type="radio" name="houseTypeId" value="0">整套出租 <input
				type="radio" name="houseTypeId" value="1">单间出租<br>
			<br>
			<p>
				<strong>基础信息</strong>
			</p>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>小区名称&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<input type="text" name="locationName"><br>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>地址&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<input type="text" name="houseAddress"><br>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>房屋户型&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<input type="text" name=houseUnit>&nbsp;室&nbsp;厅&nbsp;卫<br>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>房屋面积&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<input type="text" name="houseArea">&nbsp;㎡<br>
			<br>

			<div class="BiaoTi">
				<span style="color: red">*</span>入住限制&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<select name="limitIdFk">
				<option value="0">请选择</option>
				<c:forEach items="${limits}" var="limit">
					<option value="${limit.limitIdFk }">${limit.limitName }</option>
				</c:forEach>
			</select><br>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>装修情况&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<select name="fitmentId">
				<option value="0">请选择</option>
				<c:forEach items="${fitments}" var="fitment">
					<option value="${fitment.fitmentId }">${fitment.fitmentName }</option>
				</c:forEach>
			</select><br>
			<br>
			<div class="BiaoTi">卧室&nbsp;&nbsp;&nbsp;&nbsp;</div>
			<select name="bedroomIdFk">
				<c:forEach items="${bedrooms}" var="bedroom">
					<option value="${bedroom.bedroomIdFk }">${bedroom.bedroomName }</option>
				</c:forEach>
			</select><span style="color: red">*若为单间出租，此项必填！</span><br>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>住房类型&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<select name="houseSetTypeId">
				<option value="0">请选择</option>
				<c:forEach items="${hSetType}" var="hSetType">
					<option value="${hSetType.houseSetTypeId }">${hSetType.houseSetTypeName }</option>
				</c:forEach>
			</select><br>
			<br>


			<div class="BiaoTi">
				<span style="color: red">*</span>楼层&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			第&nbsp;<input type="text" name="houseFloor" style="width: 50px">&nbsp;层&nbsp;&nbsp;&nbsp;&nbsp;共&nbsp;<input
				type="text" name="houseFloorTotal" style="width: 50px">&nbsp;层<br>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>租金&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<input type="text" name="housePrice">&nbsp;元/月<br>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>支付要求&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<select name="payId">
				<option value="0">请选择</option>
				<c:forEach items="${pays}" var="pay">
					<option value="${pay.payId }">${pay.payName }</option>
				</c:forEach>
			</select><br>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>租金已包含费用&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<input type="checkbox" name="priceContains" value="1">&nbsp;水费&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="priceContains" value="2">&nbsp;电费&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="priceContains" value="3">&nbsp;燃气费&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="priceContains" value="4">&nbsp;宽带费&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="priceContains" value="5">&nbsp;物业费&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="priceContains" value="6">&nbsp;取暖费&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="priceContains" value="7">&nbsp;有线电视费&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="priceContains" value="8">&nbsp;停车费<br>
			<br>
			<p>
				<strong>详细信息</strong>
			</p>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>标题&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<input type="text" name="houseName" style="width: 600px"><br>
			<br>
			<div class="BiaoTi">
				<span style="color: red">*</span>房源描述&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<textarea style="width: 600px; height: 200px;" name="detailedIntro"></textarea>
			<br>
			<br>

			<div class="BiaoTi">
				<span style="color: red">*</span>上传房屋图片&nbsp;&nbsp;&nbsp;&nbsp;
			</div>

			<section class=" img-section">
			<p class="up-p">
				<span class="up-span">最多可以上传10张图片</span>
			</p>
			<div class="z_photo upimg-div clear">

				<section class="z_file fl"> <img
					src="${pageContext.request.contextPath}/img/a11.png"
					class="add-img"> <input type="file" name="files" id="files"
					class="file" accept="image/jpg,image/jpeg,image/png,image/bmp"
					multiple="multiple" /> </section>
			</div>
			</section>
			<br>

			<div class="BiaoTi">
				<span style="color: red">*</span>上传房产证照片&nbsp;&nbsp;&nbsp;&nbsp;
			</div>

			<section class=" img-section">
			<p class="up-p">
				<span class="up-span"></span>
			</p>
			<div class="z_photo upimg-div clear">
				<section class="z_file fl"> <img
					src="${pageContext.request.contextPath}/img/a11.png"
					class="add-img"> <input type="file" id="file" class="file"
					name="file" accept="image/jpg,image/jpeg,image/png,image/bmp" /> </section>
			</div>
			</section>

			<!--  <p><strong>其他信息</strong></p><br>
        <div class="BiaoTi"><span style="color: red">*</span>真实姓名&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <input type="text" name="c"><br><br>
        <div class="BiaoTi"><span style="color: red">*</span>联系电话&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <input type="text" name="telNumber"><br><br>
        <div class="BiaoTi"><span style="color: red">*</span>身份证号码&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <input type="text" name="userCard"><br><br> -->
			<input type="submit" value="申请发布"
				style="background-color: orange; width: 200px; height: 50px; border-radius: 10px; margin-left: 10%">
		</form>
	</div>
	<hr
		style="width: 1200px; height: 0; margin: 50px 0 0 80px; background-color: black">
	<div style="margin-top: 0px">

		<div class="footer-bottom">
			<div class="container" align="center">
				<!--<div class="col-md-4 footer-logo">
                <h2><a href="index.html">搜趣房</a></h2>
            </div>-->
				<h2>
					<a href="index.jsp">搜趣房</a>
				</h2>
				<!--<div class="clearfix"> </div>-->
			</div>
		</div>
	</div>
	<aside class="mask works-mask">
	<div class="mask-content">
		<p class="del-p ">您确定要删除图片吗？</p>
		<p class="check-p">
			<span class="del-com wsdel-ok">确定</span><span class="wsdel-no">取消</span>
		</p>
	</div>
	</aside>
</body>
</html>