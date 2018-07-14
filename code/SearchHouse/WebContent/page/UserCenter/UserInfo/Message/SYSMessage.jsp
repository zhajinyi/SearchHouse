<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SYSMessage</title>
     <%String path = request.getContextPath();
  String basePath = request.getScheme()+"://"
  +request.getServerName()+":"+request.getServerPort()+path;%>
    
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>/page/UserCenter/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <style>
        .area_cz{
            background-color: whitesmoke;
        }
        #label1{
            margin-top: 1%;
            margin-bottom: 0.8%;
            margin-left: 1%;
        }
    </style>
</head>
<body>
<div class="area_cz">

    <label id="label1">
        <select onchange="window.location = this.value">
            <option value="#" selected="selected">&nbsp;全&nbsp;部&nbsp;</option>
            <option value="#">&nbsp;未&nbsp;读&nbsp;</option>
            <option value="#">&nbsp;已&nbsp;读&nbsp;</option>
        </select>
    </label>

    &nbsp;共&nbsp;
    <b><a class="black2" href="/msgrev/2/0/?sys=external">0</a></b> 封&nbsp;<a class="red" href="/msgrev/2/1/?sys=external"><b>0</b></a> 封未读</div>


<table cellspacing="0" cellpadding="0" width="60%" class="table table-hover">
    <tbody>
    <tr id="tablehead">
        <th width="28">&nbsp; </th>
        <th width="28">&nbsp; </th>
        <th width="90">发件人 </th>
        <th width="320">消息内容 </th>
        <th width="250">时间 </th>
        <th width="">操作 </th>
    </tr>
    <tr><td><input type="checkbox"></td><td>&nbsp;</td>
        <td>系统通知</td><td>你中奖了</td><td>2017年7月26日15:01:55</td>
        <td><input type="button" value="删除"></td></tr>
    <tr><td><input type="checkbox"></td><td>&nbsp;</td>
        <td>系统通知</td><td>你中奖了</td><td>2017年7月26日15:01:55</td>
        <td><input type="button" value="删除"></td></tr>
    <tr><td><input type="checkbox"></td><td>&nbsp;</td>
        <td>系统通知</td><td>你中奖了</td><td>2017年7月26日15:01:55</td>
        <td><input type="button" value="删除"></td></tr>
    <tr><td><input type="checkbox"></td><td>&nbsp;</td>
        <td>系统通知</td><td>你中奖了</td><td>2017年7月26日15:01:55</td>
        <td><input type="button" value="删除"></td></tr>
    <tr><td><input type="checkbox"></td><td>&nbsp;</td>
        <td>系统通知</td><td>你中奖了</td><td>2017年7月26日15:01:55</td>
        <td><input type="button" value="删除"></td></tr>

    <tr><td colspan="2"><input type="checkbox">全选</td><td><input type="button"value="删除选中项"></td>
        <td><input type="button"value="标记为已读"></td><td></td><td></td></tr>

    </tbody>
</table>
</body>
</html>