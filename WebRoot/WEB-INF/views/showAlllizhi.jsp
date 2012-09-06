<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 
    <title>显示所有离职人员</title>
    <style type="text/css">
    	.well{
    		width:940px;
    		margin-left:0px;
    	}
    	#input01{
    		width:200px;
    		height:28px;
    	}
    </style>
</head>
<body>
	<div class="container" style="margin-top:10px;">
		<div class="row">
			
			<div class="span12 well" style="margin-left:0px;margin-buttom:0px;height:30px;" >
				<div>
					<form action="${basePath }/lizhi/searchlizhi" method="post" class="form-search">
						<input id="input01" type="text" name="username" placeholder="职员姓名" class="input-medium search-query"/>
						<input type="submit" value="搜索"/>
						<shiro:hasPermission name="add">
						<a href="${basePath }/lizhi/add" class="btn btn-info pull-right"><img alt="" src="${basePath }/statics/img/plus_circle.png">添加离职人员</a>
						</shiro:hasPermission>
					</form>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top:5px;">
			<div class="span12 well">
				<c:if test="${message != null }">
					<div class="alert alert-block alert-success">
						  <button type="button" class="close" data-dismiss="alert">×</button>
						  <center><h4>${message }</h4></center>
					</div>
				</c:if>
				<c:if test="${editmsg != null }">
					<div class="alert alert-block alert-success">
						  <button type="button" class="close" data-dismiss="alert">×</button>
						   <center><h4>${editmsg }</h4></center>
					</div>
				</c:if>
				
				<table width="100%" class="table" id="tt">
					<c:forEach items="${lizhiList }" var="lizhi" varStatus="v">
						<tr>
							<td>${v.count }</td>
							<td>${lizhi.work.id }</td>
							<td>${lizhi.work.names }</td>
							<td>${lizhi.work.sex }</td>
							<td>${lizhi.work.hiredate }</td>
							<td>${lizhi.leavedate }</td>
							<td>${lizhi.work.departDto.bumenname }</td>
							<td>${lizhi.work.workage }</td>
							<td>${lizhi.reason }</td>
							<td>${lizhi.approver }</td>
							<td>${lizhi.work.tel }</td>
							<td>
							<shiro:hasPermission name="edit">
								<a href="${basePath }/lizhi/edit/${lizhi.work.id }">编辑</a>
							</shiro:hasPermission>
							&nbsp;&nbsp;&nbsp;
							<shiro:hasPermission name="del">
								<a href="${basePath }/lizhi/del/${lizhi.work.id }">删除</a>
							</shiro:hasPermission>
							</td>
							
						</tr>
					</c:forEach>
				</table>		
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$(function(){
				$('#tt').datagrid({
					url: 'datagrid_data2.json',
					title: '所有离职人员表',
					width: 940,
					height: 'auto',
					fitColumns: true,
					columns:[[
						
						{field:'bianhao',title:'编号',width:15},
						{field:'productid',title:'工号',width:15},
						{field:'listprice',title:'姓名',width:18,align:'right'},
						{field:'unitcost',title:'性别',width:15,align:'right'},
						{field:'status',title:'入职时间',width:26,align:'right'},
						{field:'onbusinessday',title:'离职时间',width:26,align:'right'},
						{field:'position',title:'部门',width:25,align:'right'},
						{field:'workage',title:'工龄',width:13,align:'right'},
						{field:'reason',title:'离职原因',width:30,align:'right'},
						{field:'title',title:'批准人',width:15,align:'right'},
						{field:'tel',title:'电话',width:30,align:'right'},
						{field:'shanchu',title:'操作',width:20,align:'right'}
						
					]],
					onHeaderContextMenu: function(e, field){
						e.preventDefault();
						if (!$('#tmenu').length){
							createColumnMenu();
						}
						$('#tmenu').menu('show', {
							left:e.pageX,
							top:e.pageY
						});
					}
				});
		});
		
		function createColumnMenu(){
			var tmenu = $('<div id="tmenu" style="width:100px;"></div>').appendTo('body');
			var fields = $('#tt').datagrid('getColumnFields');
			for(var i=0; i<fields.length; i++){
				$('<div iconCls="icon-ok"/>').html(fields[i]).appendTo(tmenu);
			}
			tmenu.menu({
				onClick: function(item){
					if (item.iconCls=='icon-ok'){
						$('#tt').datagrid('hideColumn', item.text);
						tmenu.menu('setIcon', {
							target: item.target,
							iconCls: 'icon-empty'
						});
					} else {
						$('#tt').datagrid('showColumn', item.text);
						tmenu.menu('setIcon', {
							target: item.target,
							iconCls: 'icon-ok'
						});
					}
				}
			});
		}
		
		
		});
	
	</script>
</body>
</html>
