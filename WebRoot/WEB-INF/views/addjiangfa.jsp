<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	
    <title>添加新的奖罚人员</title>
    <style type="text/css">
    	input {
    		height: 30px;
    	}
    </style>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			
			<div class="span12"  >
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/rewards/save">	
					<div class="control-group">
					  <label class="control-label">职员</label>
					  <div class="controls">					  
						<!---奖罚的人名从职员表中读取出来 -->
						<select name="names">
							<c:forEach items="${wlist}" var="wl">
							  <option value="${wl.names}">${wl.names}</option>
						  </c:forEach>						  
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">奖罚日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="dates"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">奖罚类别</label>
					  <div class="controls">
						<select name="category">
						  <option value="奖励">奖励</option>
						  <option value="记过">记过</option>						  
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">奖罚内容</label>
					  <div class="controls">
						<input type="text"  name="content">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">奖罚原因</label>
					  <div class="controls">
						<input type="text" name="reason" >
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">批准人</label>
					  <div class="controls">
					  	<input type="text" name="approver" >
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">备注</label>
					  <div class="controls">
						<textarea rows="3" name="beizhu"></textarea>
					  </div>
					</div>
					<div class="form-actions">
					  <button class="btn btn-primary" type="submit">保存</button>
					  <a class="btn" type="button" href="${basePath}/rewards/showAlljiangfa">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
