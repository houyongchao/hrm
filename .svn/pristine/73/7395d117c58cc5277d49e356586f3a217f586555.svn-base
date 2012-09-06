<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>显示所有休假人员</title>
    <style type="text/css">
    	input{
    		height:25px;
    	}
    </style>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			
			<div class="span12"  >				
				<ul style="margin-top:10px ; margin-bottom:0px;  height:40px;" class="breadcrumb">
					<li class="active" style="font-size:20px;margin-top:10px;margin-left:10px;">
						<form class="form-search" method="post" action="${basePath}/vacation/search">
						<span style="font-size:16px; margin-right:15px;">姓名:</span><input type="text" class="input-medium search-query" name="names">
						<span style="font-size:16px; margin-right:15px;">休假类别:</span><input type="text" class="input-medium search-query" name="category">
						<span style="font-size:16px; margin-right:15px;">批准人:</span><input type="text" class="input-medium search-query" name="approver">
						<button type="submit" class="btn">Search</button>
						
					</form>
					</li>
					<shiro:hasPermission name="add">
					<li style="float:right;margin-top:10px;" ><a href="${basePath}/vacation/add" style="font-size:20px;" class="btn ">添加</a></li>
					</shiro:hasPermission>
				</ul>								
				<hr/>
				<c:if test="${delsuccess != null }">
					<div class="alert alert-success">
						<button data-dismiss="alert" class="close" type="button">×</button>
						${delsuccess}
					</div>
				</c:if>
				
				<c:if test="${savesuccess != null }">
					<div class="alert alert-success">
						<button data-dismiss="alert" class="close" type="button">×</button>
						${savesuccess}
					</div>
				</c:if>
				<c:if test="${editsuccess != null }">
					<div class="alert alert-success">
						<button data-dismiss="alert" class="close" type="button">×</button>
						${editsuccess}
					</div>
				</c:if>
				<table  border="1px;" width="100%" class="table">
					<tr>
						<td>工号</td>
						<td>姓名</td>						
						<td>申请日期</td>
						<td>休假类型</td>
						<td>开始日期</td>
						<td>结束日期</td>
						<td>销假日期</td>
						<td>休息天数</td>
						<td>批准人</td>
						<td>备注</td>
						<td colspan="2">相关操作</td>
						
					</tr>
					
					<c:if test="${fn:length(vacationList) == 0}">
						<tr>
							<td colspan="12">还没有休假人员或没有你想要的搜索结果</td>
						</tr>
					</c:if>
					<c:forEach items="${vacationList }" var ="v">
					<tr>
						<td>${v.id}</td>
						<td>${v.worker.names }</td>
						<td>${v.applicationdate }</td>
						<td>${v.category}</td>
						<td>${v.begindate}</td>
						<td>${v.enddate}</td>
						<td>${v.xiaojiadate}</td>
						<td>${v.days}</td>
						<td>${v.approver}</td>		
						<td>${v.beizhu}</td>
						<td colspan="2">
						<shiro:hasPermission name="edit">
							<a href="${basePath}/vacation/edit/${v.id}">编辑</a>
						</shiro:hasPermission>
							&nbsp;&nbsp;&nbsp;
						<shiro:hasPermission name="del">
							<a href="javascript:;" rel="${v.id}" class="del_link">删除</a>
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
			$(".del_link").click(function(){
				var id = $(this).attr("rel");
    			if(confirm("确定要删除此数据？")) {
    			
    				window.location.href = "http://localhost:80/hrm/vacation/del/" + id;
    			}
			});
		});
	</script>
</body>
</html>
