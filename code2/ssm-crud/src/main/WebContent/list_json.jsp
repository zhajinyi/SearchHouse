<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	pageContext.setAttribute("APP_PATH",request.getContextPath()); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工列表</title>

<!-- web路径问题 ：
	1、不以/开始的为相对路径，找资源，以当前资源的路径为基础
	2、绝对路径：以服务器的根路径为基准，

-->
<script src="${APP_PATH}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
<link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<style>
#operate_row{
	margin: 10px 0 10px 0;
}	
#content_table th{
	text-align: center;
}
#content_table{
	text-align: center;
}
#pageinfo span{
    background: #337ab7;
    color: white;
    border-radius: 3px;
    display: inline-block;
    font-size: 16px;
    width: 40px;
    text-align: center;	
}
#pageinfo{
	margin-top: 25px;
}
#pageUl a{
	width: 55px;
    text-align: center;
}
</style>
<body>

<!-----------------------------------------------------员工新增模态框----------------------------------------------------->
<div class="modal fade" id="empAdd_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">新增员工</h4>
      </div>
      <div class="modal-body">
      
      
			<form class="form-horizontal">
			
			  <div class="form-group">
			    <label class="col-sm-2 control-label">姓名</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="empName" placeholder="empName" name="empName">
			      <span class="help-block"></span>
			    </div>
			  </div>
			  
			  <div class="form-group">
			  	<label class="col-sm-2 control-label">性别</label>
			  	<div class="col-sm-4">
				<label class="radio-inline">
				  <input type="radio" name="gender" id="gender_m" value="M" checked="checked"> 男
				</label>
				<label class="radio-inline">
				  <input type="radio" name="gender" id="gender_f" value="F"> 女
				</label>
				</div>
			  </div>
			  
			  <div class="form-group">
			    <label class="col-sm-2 control-label">邮箱</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="email" placeholder="email@163.com" name="email">
			      <span class="help-block"></span>
			    </div>
			  </div>


			  <div class="form-group">
			    <label for="dept" class="col-sm-2 control-label">部门</label>
			    <div class="col-sm-4">
			    	<!-- 部门提交部门ID即可 -->
					<select class="form-control" id="dId" name="dId"></select>
			    </div>
			  </div>			  

			</form>
			
			
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" id="empSave_btn" ajaxcheck="error">保存</button>
      </div>
    </div>
  </div>
</div>
<!---------------------------------------------------------END--------------------------------------------------------->



	<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题栏 -->
		<div class="row">
			<div class="col-md-12">
				<h1>SSM-CRUD</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row" id="operate_row">
			<div class="col-md-3 col-md-offset-9">
				<button type="button" class="btn btn-primary" id="empAdd_btn">新增</button>
				<button type="button" class="btn btn-danger">删除</button>
			</div>
		</div>
		<!-- 表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table id="content_table" class="table table-striped table-hover" >
					<thead>
						<tr>
							<th>#</th><th>名字</th><th>性别</th><th>电子邮箱</th><th>所在部门</th><th>操作</th>
						</tr>
					</thead>
					
					<tbody></tbody>
				</table>
			</div>
		</div>

	</div>
	
		<!-- 分页信息栏 -->
		<div class="row" style="position: absolute;bottom: 80px;width: 100%;">
			<div id="pageinfo" class="col-md-5 col-md-offset-1"></div>
			<div id="page_nav" class="col-md-6">
				<nav aria-label="Page navigation">
	  				<ul id="pageUl" class="pagination">
					</ul>
				</nav>				
			</div>
		</div>	
<script type="text/javascript">
	var totalrecord;
//1.页面加载完成之后，直接发送一个ajax请求，要到分页数据；
	$(function(){
		to_page(1);
	});
	
	function to_page(pn){
		$.ajax({
			url:"${APP_PATH}/emps_json",
			data:"pn="+pn,
			type:"GET",
			success:function(result){
				//1、解析并显示员工数据
				build_emps_table(result);
				//2、解析并显示分页信息
				build_page_nav(result);
				build_page_info(result);
			}
		});		
	}
	
	function build_emps_table(result){
		$("#content_table tbody").empty();
		var emps = result.extend.PageInfo.list;
		$.each(emps,function(index,item){
			var empIdTd = $("<td></td>").append(item.empId);
			var empNameTd = $("<td></td>").append(item.empName);
			var genderTd = $("<td></td>").append(item.gender=="M"?"男":"女");
			var emailTd = $("<td></td>").append(item.email);
			var deptNameTd = $("<td></td>").append(item.department.deptName);
			var btnTd = $("<td></td>").append('<button type="button" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</button> <button type="button" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除</button>');
			//append执行完成后返回其他元素
			$("<tr></tr>").append(empIdTd)
					      .append(empNameTd)
					      .append(genderTd)
					      .append(emailTd)	
					      .append(deptNameTd)
					      .append(btnTd)
					      .appendTo("#content_table tbody");						      			
		});
		
	}
	//解析分页信息
	function build_page_info(result){
		$("#pageinfo").empty();
		//当前页数
		var pageNum = result.extend.PageInfo.pageNum;
		//总页数
		var pages = result.extend.PageInfo.pages;
		//总记录数
		var total = result.extend.PageInfo.total;
		totalrecord = pages;
		$("#pageinfo").append("当前第<span>"+pageNum+"</span>页,总<span>"+pages+"</span>页,共<span>"+total+"</span>条记录");
		
	}
	
	//解析分页条的function
	function build_page_nav(result){
		var navigatepageNums = result.extend.PageInfo.navigatepageNums;
		var pageUl = $("#pageUl");
		pageUl.empty();
		var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));

		var prePageLi = $("<li></li>").append($("<a></a>").append($("<span></span>").append("&laquo;").attr("aria-hidden","true")));
	
		if(result.extend.PageInfo.hasPreviousPage == false){
			firstPageLi.addClass("disabled");
			prePageLi.addClass("disabled");
		}else{
			firstPageLi.click(function(){
				to_page(1);
			});
			prePageLi.click(function(){
				to_page(result.extend.PageInfo.pageNum-1);
			});				
		}
		
		var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
		var nextPageLi = $("<li></li>").append($("<a></a>").append($("<span></span>").append("&raquo;").attr("aria-hidden","true")));
		
		if(result.extend.PageInfo.hasNextPage == false){
			nextPageLi.addClass("disabled");
			lastPageLi.addClass("disabled");
		}else{
			nextPageLi.click(function(){
				to_page(result.extend.PageInfo.pageNum+1);
			});
			lastPageLi.click(function(){
				to_page(result.extend.PageInfo.pages);
			});	
		}
		
		pageUl.append(firstPageLi).append(prePageLi);
		$.each(navigatepageNums,function(index,item){
			var numLi = $("<li></li>").append($("<a></a>").append(item).attr("href","#"));
			if(result.extend.PageInfo.pageNum == item){
				numLi.addClass("active");
			}
			numLi.click(function(){
				to_page(item);
			});
			pageUl.append(numLi);
		});
		pageUl.append(nextPageLi).append(lastPageLi);
	}

	//点击新增按钮弹出模态框
	$("#empAdd_btn").click(function(){
		$("#empAdd_modal form")[0].reset();
		$("#empName").next().empty();
		$("#empName").parent().parent().removeClass("has-success has-error");
		$("#email").next().empty();
		$("#email").parent().parent().removeClass("has-success has-error");
		//发送ajax请求，查出部门信息，
		getdepts();
		//加载模态框
		$("#empAdd_modal").modal({
			backdrop:"static"
		});
	});
	
	//部门查询
	function getdepts(){
		var selectEle = $("#dId");
		selectEle.empty();
		selectEle.append("<option>--请选择--</option>");
		$.ajax({
			url:"${APP_PATH}/getdepts",
			type:"GET",
			success:function(result){
				
				/* <option>--请选择--</option> */
				$.each(result.extend.depts,function(){
					var optionEle = $("<option></option>").append(this.deptName).attr("value",this.deptId);
					optionEle.appendTo(selectEle);
				});
				
			}
		});
	}

	
	//点击新增按钮弹出模态框
	$("#empSave_btn").click(function(){
		var flag = $("#empSave_btn").attr("ajaxcheck")=="success"?true:false;
		//1、获取模态框的表单数据
		if(flag){
			
			var formdata = $("#empAdd_modal form").serialize();
			$.ajax({
				url:"${APP_PATH}/emp",
				type:"POST",
				data:formdata ,
				success:function(result){
					if(result.code==100){
						//1、员工保存成功，关闭模态框，来到最后一页
						$("#empAdd_modal").modal('hide');
						to_page(totalrecord+1);
					}else{
						alert("保存失败!");
					}
					}
					
			});	
		}
	});
	
	//校验姓名与邮箱的正则表达式；
	var regName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;	
	var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
	
	$("#empName").change(function(){
		var empName = this.value;
		var flag1 = regName.test(empName);
		var flag2 = checkempnameajax(empName);
		if(!flag1&&flag2){
			regStyle("#empName","error","用户名为6-16的字符或者中文字符!");
			$("#empSave_btn").attr("ajaxcheck","error");
		}else if(flag1&&!flag2){
			regStyle("#empName","error","用户名为重复!");
			$("#empSave_btn").attr("ajaxcheck","error");
		}else if(!flag1&&!flag2){
			regStyle("#empName","error","用户名为6-16的字符或者中文字符且用户名为重复!");
			$("#empSave_btn").attr("ajaxcheck","error");
		}else{
			regStyle("#empName","success","正确!");
			$("#empSave_btn").attr("ajaxcheck","success");
		}
	});
	
	$("#email").change(function(){
		var email = this.value;
		var flag = regEmail.test(email);
		if(!flag){
			regStyle("#email","error","请输入正确的邮箱!");
			$("#empSave_btn").attr("ajaxcheck","error");
		}else{
			regStyle("#email","success","正确!");
			$("#empSave_btn").attr("ajaxcheck","success");
		}
	});
	
	
	

	
	function regStyle(EleId,status,Msg){
		var Ele = $(EleId);
		Ele.parent().parent().removeClass("has-success has-error");
		Ele.next().empty();
		if(status == "success"){
			Ele.parent().parent().addClass("has-success");
			Ele.next().text(Msg);				
		}else if (status == "error"){
			Ele.parent().parent().addClass("has-error");
			Ele.next().text(Msg);
		}		
	}
	
	
	
	function checkempnameajax(empName){
		var flag = false;
		$.ajax({
			url:"${APP_PATH}/checkEmpName",
			data:"empname="+empName,
			type:"POST",
			async:false,
			success:function(result){
				if(result.code==100){
					flag = true;
				}
			}
		});		
		
		return flag;
	}
</script>
</body>
</html>