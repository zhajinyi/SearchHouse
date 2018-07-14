<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LocationImg</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<script
	src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet"
	href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script
	src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<!--     <script type="text/javascript">
        function previewImage(file) {
        	
            var MAXWIDTH = 120;
            var MAXHEIGHT = 120;
            var div = document.getElementById('preview');
            if (file.files && file.files[0]) {
                div.innerHTML = '<img id=imghead style="border-radius:50%">';
                var img = document.getElementById('imghead');
                img.onload = function () {
                    var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                    img.width = rect.width;
                    img.height = rect.height;
                    img.style.marginLeft = rect.left+'px';
                    img.style.marginTop = rect.top + 'px';
                }
                var reader = new FileReader();
                reader.onload = function (evt) {
                    img.src = evt.target.result;
                }
                reader.readAsDataURL(file.files[0]);
                /* this.form.submit(); */
               
            }else{  //兼容IE
                var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
                file.select();
                var src = document.selection.createRange().text;
                div.innerHTML = '<img id=imghead>';
                var img = document.getElementById('imghead');
                img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
                div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
            }
        }

        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight ){
                rateWidth = width / maxWidth;
                rateHeight = width / maxWidth;
                if( rateWidth > rateHeight ){
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else{
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        } 
     
        
     
    </script> -->
<style>
.fileinput-button {
	position: relative;
	display: inline-block;
}

#isnotsystem {
	margin-left: 20px;
}

.fileinput-button input {
	position: absolute;
	right: 0px;
	top: 0px;
	overflow: hidden;
	opacity: 0;
	-ms-filter: 'alpha(opacity=0)';
}

#ImgForm {
	margin-left: 5.5%;
	margin-top: 2%;
}

#preview:hover {
	cursor: pointer
}

.imgsubmit {
	margin-left: 20px;
	height: 30px;
	width: 100px;
	border: 0px;
	background: #00F06F;
	color: white;
	border-radius: 5px;
}

#spantips {
	float: left;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("file").submit(function(e) {
			alert("修改成功！");
		});
	});
</script>

</head>
<body>

	<div class="row cl" id="isnotsystem" style="display: block;">
		<!-- <label class="form-label col-xs-3 col-sm-2"></label> -->
		<div class="formControls col-xs-9 col-sm-9">
			<form action="${pageContext.request.contextPath }/singlefileupload"
				method="post" enctype="multipart/form-data">
				<input id="faceLegalFile_2" name="faceLegalFile" type="file"
					style="display: none"
					accept="image/png,image/jpg,image/jpeg,image/bmp,image/gif" /> 
					<img
					class="btn" id="faceLegalFile" title="点击上传图片" data-toggle="tooltip"
					data-placement="bottom"
					src="<c:choose><c:when test='${empty user.userPhoto}'>../../img/头像.png</c:when><c:otherwise><%=basePath%>/img/${user.userPhoto}</c:otherwise>
        </c:choose>"
					width="140" height="140" style="border-radius: 45%" /> <br />
				<br />
				<div id="spantips">
					<span style="color: red;">*</span>文件大小不要超过5M,格式为[jpg, gif, png,
					bmp]
				</div>
				<textarea id="files" name="textFile"
					style="width: 1px; height: 10px; resize: none; border: 0px; overflow: hidden;"></textarea>
				</br> <input type="hidden" name="userId" value="${user.userId}" /> <input
					type="submit" class="imgsubmit" id="imgsubmit11" value="完成修改" />

			</form>
		</div>
	</div>



	<%-- <form action="${pageContext.request.contextPath }/singlefileupload"  method="post"  enctype="multipart/form-data">
<div id="UserImageDiv">
    <div id="preview">
        <img id="imghead" border=0 src="../../img/头像.png" width="120" height="120" onchange="previewImage(this)"/>
        <input type="file" id="fileimg" style="display:none" >
    </div>
</div>
<input type="hidden" name="userId" value="${user.userId}">
<input type="submit" value="提交">
</form>
 --%>
	<script>
		var isCorrect;

		function getObjectURL(file) {
			var url = null;
			if (window.createObjectURL != undefined) { // basic
				url = window.createObjectURL(file);
			} else if (window.URL != undefined) { // mozilla(firefox)
				url = window.URL.createObjectURL(file);
			} else if (window.webkitURL != undefined) { // webkit or chrome
				url = window.webkitURL.createObjectURL(file);
			}
			return url;
		}

		$("img").click(function() {
			var id = $(this).attr("id");
			$("input[id^=" + id + "]").click();
		});

		$("input[id=faceLegalFile_2]").change(function() {
			var size = this.files[0].size;
			if (size == 0) {
				alert("请上传图片");
				isCorrect = false;
			} else if (size >= 1024000 * 5) {
				alert("图片大小上传超过5M");
				isCorrect = false;
			} else {
				var imgname = this.files[0].name;
				var imgsuffix = imgname.substr(imgname.lastIndexOf(".") + 1);
				var suffixarr = ".jpg .gif .png .bmp .jpeg";
				if (suffixarr.indexOf(imgsuffix) < 0) {
					alert("图片格式不正确，请上传png/jpg/jpeg/bmp/gif格式的图片");
					isCorrect = false;
				} else {
					var objUrl = getObjectURL(this.files[0]);
					if (objUrl) {
						$("#faceLegalFile").attr("src", objUrl);
						$("#files").val("pic_piclogo");
						isCorrect = true;
					}
				}
			}
			return isCorrect;
		});
	</script>


</body>
</html>