<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>招聘项目</title>
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
				<ul style="margin-top:10px ; margin-bottom:0px; " class="breadcrumb">
					<li class="active" style="font-size:20px;margin-top:10px; " >
						<form class="form-search" method="post" action="${basePath}/zhaopin/search">						
							<span style="font-size:16px; margin-right:15px; ">招聘岗位名称:</span><input type="text" class="input-medium search-query" name="position">
							&nbsp;&nbsp;<span style="font-size:16px; margin-right:15px;">需求部门:</span><input type="text" class="input-medium search-query" name="names">
							&nbsp;&nbsp;<span style="font-size:16px; margin-right:15px;">岗位需求:</span><input type="text" class="input-medium search-query" name="content">
							<button type="submit" class="btn">Search</button>
						</form>
					</li>
					<shiro:hasPermission name="add">
					<li style="float:right;margin-top:10px;" ><a href="${basePath}/zhaopin/add" style="font-size:20px;" class="btn ">添加</a></li>
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
						<td>招聘岗位名称</td>
						<td>岗位需求</td>
						<td>招聘渠道</td>
						<td>需求部门</td>
						<td>需求数量</td>
						<td>开始时间</td>
						<td>备注</td>
						<td colspan="2">相关操作</td>
					</tr>
					<c:if test="${fn:length(zhaopinList) == 0 }">
						<tr>
							<td colspan="9">还没有开始招聘或你搜索的结果不存在</td>
						</tr>
					</c:if>
					<c:forEach items="${zhaopinList}" var="zl">
						<tr>
							<td>${zl.position }</td>
							<td>${zl.content }</td>
							<td>${zl.qudao }</td>
							<td>${zl.depart.names}</td>
							<td>${zl.requirenum }</td>
							<td>${zl.begindate }</td>
							<td>${zl.beizhu }</td>				
							<td colspan="2">
							<shiro:hasPermission name="edit">
								<a href="${basePath}/zhaopin/edit/${zl.id}">编辑</a>
							</shiro:hasPermission>
								&nbsp;&nbsp;&nbsp;
							<shiro:hasPermission name="del">
								<a href="javascript:;" rel="${zl.id}" class="del_link">删除</a>
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
    			
    				window.location.href = "http://localhost:80/hrm/zhaopin/del/" + id;
    			}
			});
		});
	</script>
</body>
</html>
