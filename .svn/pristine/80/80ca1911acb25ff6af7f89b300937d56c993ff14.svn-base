<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.css" />
    <title>本月试用到期人数列表</title>
</head>
<body>
  	<div class="container" style="margin-top:20px;">
		<div class="row">
			<div class = "span2 well" style="font-size:14px;margin-right:5px; margin-top:0px;">				
				<ul class="nav nav-list" >					 					
				  <li ><a href="${basePath }/people">在职人员</a></li>
				   <li><a href="${basePath }/people/lizhi" >离职人员</a></li>			   
				  <li ><a href="${basePath }/people/shiyongrenyuan">试用人员</a></li>
				  <li ><a href="${basePath }/people/ruzhirenyuan">本月入职人员</a></li>
				  <li><a href="${basePath }/people/benyuelizhi">本月离职人员</a></li>
				  <li class="active"><a href="${basePath }/people/shiyongdaoqi">本月试用到期${size }人</a></li>
				  <li><a href="${basePath }/people/birthday">本月生日人员</a></li>	
				</ul>					
			</div>
			<div class="span9 well" style="padding:0px;width:730px;" >
				<div>	
					<table width="100%" class="table" id="tt">
						<c:forEach items="${daoqiList }" var="shiyong" varStatus="v">
							<tr>
								<td>${v.count}</td>
								<td>${shiyong.worker.id }</td>
								<td>${shiyong.worker.names}</td>
								<td>${shiyong.worker.sex }</td>
								<td>${shiyong.worker.age }</td>
								<td>${shiyong.begindate }</td>
								<td>${shiyong.enddate }</td>
								<td>${shiyong.result }</td>
								<td>${shiyong.approver }</td>
								<td>${shiyong.worker.title }</td>
								<td>${shiyong.worker.tel }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$(function(){
				$('#tt').datagrid({
					url: 'datagrid_data2.json',
					title: '本月试用到期人员表',
					width: 730,
					height: 'auto',
					fitColumns: true,
					columns:[[
						{field:'bianhao',title:'编号',width:15},
						{field:'productid',title:'工号',width:15},
						{field:'listprice',title:'姓名',width:18,align:'right'},
						{field:'unitcost',title:'性别',width:15,align:'right'},
						{field:'attr1',title:'年龄',width:15,align:'right'},
						{field:'status',title:'开始日期',width:26,align:'right'},
						{field:'onbusinessday',title:'结束日期',width:26,align:'right'},
						{field:'businesssalary',title:'结果',width:15,align:'right'},
						{field:'workage',title:'批准人',width:15,align:'right'},
						{field:'workagesalary',title:'职称',width:35,align:'right'},
						{field:'extraltime',title:'联系电话',width:35,align:'right'}
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
