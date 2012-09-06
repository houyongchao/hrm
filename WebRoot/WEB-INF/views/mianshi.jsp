<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'mianshi.jsp' starting page</title>
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
					<form class="form-search" method="post" action="${basePath}/mianshi/search">
						<span style="font-size:16px; margin-right:15px; ">应聘人:</span><input type="text" class="input-medium search-query" name="interviewee">
						&nbsp;&nbsp;<span style="font-size:16px; margin-right:15px;">面试人:</span><input type="text" class="input-medium search-query" name="interviewer">
						&nbsp;&nbsp;<span style="font-size:16px; margin-right:15px;">岗位名称:</span><input type="text" class="input-medium search-query" name="position">
						<button type="submit" class="btn">Search</button>
					</form>
					</li>
					<shiro:hasPermission name="add">
					<li style="float:right;margin-top:10px;" ><a href="${basePath}/mianshi/add" style="font-size:20px;" class="btn ">添加</a></li>
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
						<td>应聘人</td>
						<td>应聘岗位</td>
						<td>面试日期</td>
						<td>面试人</td>
						<td>面试内容</td>
						<td>面试结果</td>						
						<td>审核人</td>
						<td colspan="2">相关操作</td>
					</tr>
				 <c:if test="${fn:length(interviewList) ==0 }">
				 	<tr>
				 		<td colspan="9">还没有来面试的人或你所要搜索的结果不存在</td>
				 	</tr>
				 </c:if>
				 <c:forEach items="${interviewList}" var="inv">
					<tr>
						<td>${inv.interviewee }</td>
						<td>${inv.position }</td>
						<td>${inv.dates }</td>
						<td>${inv.interviewer }</td>
						<td>${inv.content }</td>
						<td>${inv.result }</td>						
						<td>${inv.approver }</td>				
						<td colspan="2">
						<shiro:hasPermission name="edit">
							<a href="${basePath}/mianshi/edit/${inv.id}">编辑</a>
						</shiro:hasPermission>
							&nbsp;&nbsp;&nbsp;
						<shiro:hasPermission name="del">
							<a href="javascript:;" rel="${inv.id}" class="del_link">删除</a>
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
    			
    				window.location.href = "http://localhost:80/hrm/mianshi/del/" + id;
    			}
			});
		});
	</script>
  </body>
</html>
