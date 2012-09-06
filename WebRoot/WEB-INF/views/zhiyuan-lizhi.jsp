<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.css" />
    <title>离职人员列表</title>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			<div class = "span2 well" style="font-size:14px;margin-right:20px margin-top:100px;">				
				<ul class="nav nav-list" style="font-size:14px; " >					 					
				  <li ><a href="${basePath }/people">在职人员</a></li>
				   <li class="active"><a href="${basePath }/people/lizhi">离职${size }人</a></li>			   
				  <li ><a href="${basePath }/people/shiyongrenyuan">试用人员</a></li>
				  <li ><a href="${basePath }/people/ruzhirenyuan">本月入职人员</a></li>
				  <li><a href="${basePath }/people/benyuelizhi">本月离职人员</a></li>
				  <li><a href="${basePath }/people/shiyongdaoqi">本月试用到期人员</a></li>
				  <li><a href="${basePath }/people/birthday">本月生日人员</a></li>	
				</ul>					
			</div>
			<div class="span9 well" style="padding:0px;width:730px;">
				<div  style="margin-top:0px;padding-top:0px;width:100%;margin-left:0px;">	
					<table width="100%" class="table" id="tt">
						
						<c:forEach items="${dimissionList }" var="d">
							<tr>
								<td>${d.work.id }</td>
								<td>${d.work.names }</td>
								<td>${d.work.sex }</td>
								<td>${d.work.age }</td>
								<td>${d.work.hiredate }</td>
								<td>${d.leavedate }</td>
								<td>${d.work.title }</td>
								<td>${d.work.workage }</td>
								<td>${d.work.education }</td>
								<td>${d.work.position }</td>
								<td>${d.work.tel }</td>
								<td>${d.work.birthplace }</td>
								
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
					title: '离职人员表',
					width: 730,
					height: 'auto',
					fitColumns: true,
					columns:[[
						{field:'productid',title:'工号',width:15},
						{field:'listprice',title:'姓名',width:18,align:'right'},
						{field:'unitcost',title:'性别',width:15,align:'right'},
						{field:'attr1',title:'年龄',width:15,align:'right'},
						{field:'status',title:'入职时间',width:26,align:'right'},
						{field:'onbusinessday',title:'离职时间',width:26,align:'right'},
						{field:'position',title:'岗位',width:25,align:'right'},
						{field:'workage',title:'工龄',width:13,align:'right'},
						{field:'education',title:'学历',width:15,align:'right'},
						{field:'title',title:'职称',width:15,align:'right'},
						{field:'tel',title:'电话',width:30,align:'right'},
						{field:'birthplace',title:'籍贯',width:30,align:'right'},
						
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
