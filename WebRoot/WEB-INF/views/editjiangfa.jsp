<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/statics/css/bootstrap.min.css" />
    <title>编辑奖罚人员</title>
    <style type="text/css">
    	input {
    		height:30px;
    	}
    </style>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			
			<div class="span12"  >
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" action="${basePath}/rewards/update" method="post" >	
					<div class="control-group">
					  <label class="control-label">职员${rewards.worker.id }</label>
					  <div class="controls">
						<input type="text" value="${rewards.worker.names }"   readonly="readonly" name="worker.names"/>
						<input type="hidden" name="id" value="${rewards.id}"/>
						<input type="hidden" name="worker.id" value="${rewards.worker.id }"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">奖罚日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="dates" value="${rewards.dates }"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">奖罚类别</label>
					  <c:choose>
					  	<c:when test="${rewards.category == '奖励'}">
					  		 <div class="controls">
								<select name="category" >
								  <option value="奖励" selected="selected">奖励</option>
								  <option value="记过">记过</option>						  
								</select>
						  </div>
					  	</c:when>
					  	<c:when test="${rewards.category == '记过'}">
					  		  <div class="controls">
								<select name="category" >
								  <option value="奖励" >奖励</option>
								  <option value="记过" selected="selected">记过</option>						  
								</select>
						  	 </div> 
					  	</c:when>
					  </c:choose>
					
					</div>
					<div class="control-group">
					  <label class="control-label">奖罚内容</label>
					  <div class="controls">
						<input type="text" value="${rewards.content }" name="content">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">奖罚原因</label>
					  <div class="controls">
						<input type="text" value="${rewards.reason }"  name="reason">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">批准人</label>
					  <div class="controls">
						<input type="text" value="${rewards.approver }"  name="approver">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">备注</label>
					  <div class="controls">
						<textarea rows="3" name="beizhu" >${rewards.beizhu }</textarea>
					  </div>
					</div>
					<div class="form-actions">
					  <button class="btn btn-primary" type="submit">保存</button>
					  <a class="btn" type="button"  href="${basePath}/rewards/showAlljiangfa">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
