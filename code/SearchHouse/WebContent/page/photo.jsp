<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>文件上传下载</title>
</head>
<body>
	<%--  <form action="${pageContext.request.contextPath }/upload" method="post" enctype="multipart/form-data">  
        选择文件:<input type="file" name="file" width="120px">  
        <input type="submit" value="上传">  
    </form>  
    <hr>  
    <form action="${pageContext.request.contextPath }/down" method="get">  
        <input type="submit" value="下载">  
    </form>  --%>
<body>
	<!-- 上传页面的准备 -->
	<form action="${pageContext.request.contextPath }/filesUpload"
		method="post" enctype="multipart/form-data">
		<p>
			选择文件:<input type="file" name="files">
		<p>
			选择文件:<input type="file" name="files">
		<p>
			选择文件:<input type="file" name="files">
		<p>
			<input type="submit" value="提交">
	</form>
</body>

</body>
</html>