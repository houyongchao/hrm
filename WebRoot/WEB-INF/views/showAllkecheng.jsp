<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	
    <title>显示所有培训课程</title>
    <style type="text/css">
    	input {
    		height:25px;
    	}
    </style>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			
			<div class="span12"  >				
				<ul style="margin-top:10px ; margin-bottom:0px;  " class="breadcrumb">
					<li class="active" style="font-size:20px;margin-top:10px; ">
					<form class="form-search"  method="post" action="${basePath}/peixunkecheng/search">
						&nbsp;&nbsp;<span style="font-size:16px; margin-right:15px;">课程:</span><input type="text" class="input-medium search-query" name="kechengname">
						&nbsp;&nbsp;<span style="font-size:16px; margin-right:15px;">课时:</span><input type="text" class="input-medium search-query" name="keshi">
						&nbsp;&nbsp;<span style="font-size:16px; margin-right:15px;">课程类别:</span><input type="text" class="input-medium search-query" name="category">
						<button type="submit" class="btn">Search</button>
					</form>
					</li>
					<shiro:hasPermission name="add">
						<li style="float:right;margin-top:10px;" ><a href="${basePath}/peixunkecheng/add" style="font-size:20px;" class="btn ">添加</a></li>
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
						<td>课程名称</td>
						<td>课程类别</td>
						<td>培训机构电话</td>
						<td>培训对象</td>
						<td>课时</td>
						<td>开始时间</td>
						<td>结束时间</td>
						<td>备注</td>
						<td colspan="2">相关操作</td>
						
					</tr>
					<c:if test="${fn:length(trainningList) == 0}">
						<tr>
							<td colspan="10">还没有开始培训或没有你想要的搜索结果</td>
						</tr>
					</c:if>
					<c:forEach items="${trainningList}" var="trlist">
						<tr>
							<td>${trlist.kechengname }</td>
							<td>${trlist.category}</td>
							<td>${trlist.agency.contactemail}</td>
							<td>${trlist.worker.names }</td>
							<td>${trlist.keshi}</td>
							<td>${trlist.begindate}</td>
							<td>${trlist.enddate}</td>
							<td>${trlist.beizhu}</td>
							<td colspan="2">
							<shiro:hasPermission name="edit">
								<a href="${basePath}/peixunkecheng/edit/${trlist.id}">编辑</a>
							</shiro:hasPermission>
								&nbsp;&nbsp;&nbsp;
							<shiro:hasPermission name="del">
								<a href="javascript:;" rel="${trlist.id}" class="del_link">删除</a>
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
    			
    				window.location.href = "http://localhost:80/hrm/peixunkecheng/del/" + id;
    			}
			});
		});
	</script>
</body>
</html>
