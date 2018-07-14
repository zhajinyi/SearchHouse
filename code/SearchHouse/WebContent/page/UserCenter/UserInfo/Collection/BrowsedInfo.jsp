<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BrowsedInfo</title>
<%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
<table cellspacing="0" cellpadding="0" border="0" width="100%" id="favContent" class="table table-hover">
    <tbody>
    <tr id="tablehead">
        <th width="490">信息标题</th>
        <th width="180">更新时间</th>
        <th width="48">操作</th>
    </tr>
    <tr>
        <td colspan="3" style="text-align:center;">您没有浏览过过任何信息</td>
    </tr>

    </tbody>
</table>
</body>
</html>