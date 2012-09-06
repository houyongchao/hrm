<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>salary</title>
    <style type="text/css">
		span{
			font-size:16px;
		}
		.span12{
			margin-left:0px;
		}
	</style>
  </head>
  <body>
    <div class="container">
		<div class="row well" style="height:35px">
			<div class="span10">
				<form action="searchsalary" method="post">
					<span style="margin-left:30px;">月份:</span>
					<select id="e3" style="width:200px" name="yuefen">
							<option>--请选择月份--</option>
							<option value="1">1月份</option>
							<option value="2">2月份</option>
							<option value="3">3月份</option>
							<option value="4">4月份</option>
							<option value="5">5月份</option>
							<option value="6">6月份</option>
							<option value="7">7月份</option>
							<option value="8">8月份</option>
							<option value="9">9月份</option>
							<option value="10">10月份</option>
							<option value="11">11月份</option>
							<option value="12">12月份</option>
					</select>
					<span style="margin-left:40px">部门:</span>
					<select id="e2" style="width:200px" name="bumen"></select>
					<input type="submit" value="搜索"/>
				</form>
			</div>
			
		</div>
		<div class="row well" style="padding-left:9px;margin-top:0px;">
			<div class="span12">
			<table class="table table-hover table-bordered" id="tt">
					<c:forEach items="${salaryList }" var="salary" varStatus="v">
						<tr>
							<td>${v.count }</td>
							<td>${salary.id }</td>
							<td>${salary.worker.names }</td>
							<td>${salary.basesary }</td>
							<td>${salary.shijiaxiaoshi }</td>
							<td>${salary.shijiakouchu }</td>
							<td>${salary.onbusinessday }</td>
							<td>${salary.businesssary }</td>
							<td>${salary.workage }</td>
							<td>${salary.workagesary }</td>
							<td>${salary.extralworkhour }</td>
							<td>${salary.extralworksalary }</td>
							<td>${salary.total }</td>
							<td>${salary.shifa }</td>
							<td>${salary.dates }</td>
						</tr>
					</c:forEach>
			</table>
			</div>
		</div>
	
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			
			$("#e3").change(function(){
				$("#e2").html("");
				$.post("depart.json",function(result){
					$("#e2").append($("<option>--请选择部门--</option>"));
					$(result).each(function(){
						$("#e2").append($("<option value="+"'"+this.englishnames+"'"+">"+this.names+"</option>"));
					
					});
				
				});
			});
			/*下面是easyui插件的js代码*/
			$(function(){
				$('#tt').datagrid({
					url: 'datagrid_data2.json',
					title: '员工工资表',
					width: 940,
					height: 'auto',
					fitColumns: true,
					columns:[[
						{field:'itemid',title:'编号',width:14},
						{field:'productid',title:'工号',width:15},
						{field:'listprice',title:'姓名',width:18,align:'right'},
						{field:'unitcost',title:'基本工资',width:25,align:'right'},
						{field:'attr1',title:'事假小时',width:25,align:'right'},
						{field:'status',title:'事假扣除',width:25,align:'right'},
						{field:'onbusinessday',title:'出差天数',width:25,align:'right'},
						{field:'businesssalary',title:'差补金额',width:25,align:'right'},
						{field:'workage',title:'工龄',width:14,align:'right'},
						{field:'workagesalary',title:'工龄工资',width:25,align:'right'},
						{field:'extraltime',title:'加班小时',width:25,align:'right'},
						{field:'extralsalary',title:'加班薪水',width:25,align:'right'},
						{field:'total',title:'总计',width:15,align:'right'},
						{field:'shifa',title:'实发',width:15,align:'right'},
						{field:'dates',title:'发薪日期',width:25,align:'right'},
						
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
