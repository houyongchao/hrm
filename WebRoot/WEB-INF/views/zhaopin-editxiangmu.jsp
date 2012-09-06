<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>招聘项目的编辑</title>
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
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/zhaopin/update">	
					<div class="control-group">
					  <label class="control-label">招聘岗位名称</label>
					  <div class="controls">
						<input type="text" value="${zhaopin.position }" name="position" >
						<input type="hidden" name="id" value="${zhaopin.id }">
						<!--
							<input type="hidden" name="depart.id" value="${zhaopin.depart.id }">
					  	-->
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">开始时间</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" value="${zhaopin.begindate}" name="begindate"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">岗位需求</label>
					  <div class="controls">
						<input type="text" value="${zhaopin.content }" name="content">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">需求部门</label>
					  <div class="controls">
					  <select name="names">
					  <c:forEach items="${departList }" var="dplist"> 
					  	<option value="${dplist.englishnames }">${dplist.names }</option>
					  	</c:forEach>
					  </select>
						<%-- <input type="text" value="${zhaopin.depart.names }" name="depart.names" readonly="readonly"> --%>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">需求数量</label>
					  <div class="controls">
						<input type="text" value="${zhaopin.requirenum }" name="requirenum" >
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">招聘渠道</label>
					  <div class="controls">
						<input type="text" value="${zhaopin.qudao }" name="qudao" >
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">备注</label>
					  <div class="controls">
						<textarea rows="3" name="beizhu">${zhaopin.beizhu }</textarea>
					  </div>
					</div>
					<div class="form-actions">
					  <button class="btn btn-primary" type="submit">保存</button>
					  <a class="btn" type="button" href="${basePath}/zhaopin/showAllzhaopin"> 返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
