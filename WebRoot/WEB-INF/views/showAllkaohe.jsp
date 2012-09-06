<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/statics/css/bootstrap.min.css" />
    <title>显示所有考核人员</title>
    <style type="text/css">
    	input {
    		height:25px;
    	}
    </style>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff; ">
		<div class="row">
			
			<div class="span12"  >				
				<ul style="margin-top:10px ; margin-bottom:0px;  height:40px;" class="breadcrumb">
					<li class="active" style="font-size:20px;margin-top:10px;margin-left:10px; ">
						<form class="form-search"  method="post" action="${basePath}/kaohe/search">
						<span style="font-size:16px; margin-right:15px;">姓名:</span><input type="text" class="input-medium search-query" name="names">
						<span style="font-size:16px; margin-right:15px;">考核类别:</span><input type="text" class="input-medium search-query" name="category">
						<span style="font-size:16px; margin-right:15px;">考核期间:</span><input type="text" class="input-medium search-query" name="during">
						
						<button type="submit" class="btn">Search</button>
						
					</form>
					</li>
					<shiro:hasPermission name="add">
						<li style="float:right;margin-top:10px;" ><a href="${basePath}/kaohe/add" style="font-size:20px;" class="btn ">添加</a></li>
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
						<td>姓名</td>
						<td>考核类别</td>
						<td>考核期间</td>
						<td>考核日期</td>
						<td>考核等级</td>
						<td>考核评价</td>
						<td>备注</td>
						<td colspan="2">相关操作</td>
						
					</tr>
					<c:if test="${fn:length(checklist) == 0 }">
						<tr>
							<td colspan="9">还没有考核人员或没有你想要的搜索结果</td>
						</tr>
					</c:if>
					<c:forEach items="${checklist}" var="c">
					<tr>
						<td>${c.worker.names }</td>
						<td>${c.category }</td>
						<td>${c.during }</td>
						<td>${c.dates }</td>
						<td>${c.level }</td>
						<td>${c.evaluate}</td>
						<td>${c.beizhu }</td>
						<td colspan="2">
						<shiro:hasPermission name="edit">
							<a href="${basePath}/kaohe/edit/${c.id}">编辑</a>
						</shiro:hasPermission>
							&nbsp;&nbsp;&nbsp;
						<shiro:hasPermission name="del">
							<a href="javascript:;" rel="${c.id}" class="del_link">删除</a>
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
    			
    				window.location.href = "http://localhost:80/hrm/kaohe/del/" + id;
    			}
			});
		});
	</script>
</body>
</html>
