<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	
    <title>显示所有培训机构</title>
    <style type="text/css">
    	input {
    		height:25px;
    	}
    	ul.breadcrumb {
    		height:50px;
    	}
    </style>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			
			<div class="span12"  >				
				<ul style="margin-top:10px ; margin-bottom:0px;  " class="breadcrumb">
					<li class="active" style="font-size:20px;margin-top:10px; ">	
						<form class="form-search"  method="post" action="${basePath}/peixunjigou/search">				
							<span style="font-size:16px; margin-right:15px; ">机构名称:</span><input type="text" class="input-medium search-query" name="names">
							&nbsp;&nbsp;<span style="font-size:16px; margin-right:15px;">机构地址:</span><input type="text" class="input-medium search-query" name="address">
							<span style="font-size:16px; margin-right:15px;">联系人:</span><input type="text" class="input-medium search-query" name="contact">
							<button type="submit" class="btn">Search</button>
						</form>
					</li>
					<shiro:hasPermission name="add">
					<li style="float:right;margin-top:10px;" ><a href="${basePath}/peixunjigou/add" style="font-size:20px;" class="btn ">添加</a></li>
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
				<table  border="1px;" width="100%" class="table" style="font-size:20px;">
					<tr>
						<td>机构名称</td>
						<td>机构地址</td>
						<td>机构电话</td>
						<td>联系人</td>
						<td>联系人电话</td>
						<shiro:hasPermission name="edit">
						<td colspan="2">相关操作</td>
						</shiro:hasPermission>
						
					</tr>
					<c:if test="${fn:length(trainAgencyList) == 0}">
						<tr>
							<td colspan="7">当前还没有培训机构或没有你想要的搜索结果</td>
						</tr>
					</c:if>
					<c:forEach items="${trainAgencyList}" var="tg">
					<tr>
						<td>${tg.names }</td>
						<td>${tg.address }</td>
						<td>${tg.contactemail }</td>
						<td>${tg.contact }</td>
						<td>${tg.contacttels}</td>
						<shiro:hasPermission name="edit">
						<td colspan="2"><a href="${basePath}/peixunjigou/edit/${tg.id}">编辑</a></td>
						</shiro:hasPermission>
					</tr>
					</c:forEach>
				</table>				
			</div>
		</div>
	</div>
</body>
</html>
