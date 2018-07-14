<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/ueditor/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript">
	//百度编辑器
	var ue = UE.getEditor('editor',{
	elementPathEnabled: false, //删除元素路径
    wordCount: false    //删除字数统计
    });
	ue.ready(function() {
	      //获取html内容，返回: <p>hello</p>
	      var html = ue.getContent(); 
	  });
	var  ws;
	var url="ws://localhost:8080/SearchHouse/chatSocket?username=hh";
	window.onload=connect;	
	function connect(){
		//检测浏览器兼容性
		if ('WebSocket' in window) {
		    ws = new WebSocket(url);
		} else if ('MozWebSocket' in window) {
		    ws = new MozWebSocket(url);
		} else {
		    alert('浏览器不支持！！！');
		    return;
		}	 
		ws.onmessage=function(event){
			//jquery解析json
			eval("var result="+event.data);
			//某某人进入了聊天室/退出聊天室
			if(result.alert!=undefined){
				$("#content").append(result.alert + "<br/>");
			}

			//刷新联系人列表
			if (result.names != undefined) {
				$("#userList").html("");
				$(result.names).each(function() {
					$("#userList").append("<input type=checkbox id=test value="+this+">"+this + "<br/>");
				});
			}

			//往消息框追加消息
			if (result.from != undefined) {
				$("#content").append(result.from + " " + result.date + " 说：<br/>"
								+ result.sendMsg + "<br/>");
			}

		};
	}

	//发送消息往后台传送消息
	function send() {
		var val=ue.getContent('editor')
		//var val = $("#editor").val();  //消息内容
		var obj = null;

		//jqery和js如何判断checkbox是否选中 
		//$("input[type='checkbox']").is(':checked')
		//返回结果：选中=true，未选中=false
		
		if ($("input[type='checkbox']").is(':checked')){
			var to = $("#userList :checked").val();
			obj = {
				to:to,
				msg:val,
				type:2,  //1广播，2单聊
			};
		}else{
			obj = {
				msg:val,
				type:1,  //1广播，2单聊
			};
		};
		var str = JSON.stringify(obj);	//js将对象转为json
		ws.send(str);					//发送消息
		alert(str)
		ue.setContent('');				//清空文本框
	}
	
</script>
<style type="text/css">
        div{
            width:100%;
        }
        .all{
        width:600px;
        height:487px;
        text-align: center;
        border:1px solid darkgray;
        margin-left:25%;
        margin-top:100px; 
        }
        #content{
        width:600px;
        height:240px;
        /* border: none; */
        text-align:left;
        color:#F75000;
        border: 1px solid darkgray;
        overflow-y:auto;
        overflow-x:auto;
        }
        #message2{
        width:600px;
        height:61px;
        /* border: none; */
        text-align:left;
        background-color:whitesmoke;
        border: 1px solid darkgray;
        }
        #message1{
        width:600px;
       /*  height:231px; */
        /* border: none; */
        text-align:left;
        color:#F75000;
        border: 1px solid darkgray;
        }
        body{
        width:100%;
        height:400px;
        text-align: center;
        /* background-image:url("${pageContext.request.contextPath}/image/background.jpg"); */
        }
        /* img{
        width: 40px;
        height: 40px;
        border-radius:50%; 
        float:left;
        } */
        #text1{
        font-size: 20px;
        
        }
        p{
        font-family: 幼圆;
        font-size: 14px;
        color:green;
        display: block;
        float:left;
        
        }
        #chattext{
        width:580px;
        height:32px;
        text-align: left;
        float:left;
        }
        .btn0{
        	
        	position: absolute;
        }
        #span{
       		/* text-align: center; */
        	position: absolute;
        	margin-left:20%;
        	margin-top: 20px;
        	font-size: 20px;      	
        }
    </style>
</head>
<body>

	<h3>欢迎 ${sessionScope.username } 使用本系统！！</h3>
<div id="all">
	<div id="message2">
	<span id="span">微聊</span>
	</div>	
	<div id="content"></div>	
	<div id="message1">
		<script id="editor" type="text/plain" style="width:593.5px;height:100px;border: 1px solid darkgray;"></script>	
	</div>
	<!-- <div  id="userList" style="border: 1px solid black; width: 100px;
	 height: 300px;float:left; overflow:scroll;"></div> -->
	<div style="width:598px;height:42px;background-color:whitesmoke;border: 1px solid darkgray;text-align: center;">	
		<input type="button" class="btn1" value="发送" onclick="send()" style="margin-left:20px;margin-top:10px;"/>
		<input type="button" class="btn2" value="关闭" onclick="closeWebSocket()" style="margin-left:100px;margin-top:10px;"/>
	</div>
</div>
</body>
</html>