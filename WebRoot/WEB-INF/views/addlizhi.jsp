<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>添加新的离职人员</title>
    <style type="text/css">
    	input{
    		height:28px;
    	}
    
    </style>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			<div class="span12"  >
				<form action="${basePath }/lizhi/save" class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post">	
					<div class="control-group">
					  <label class="control-label">姓名</label>
					  <div class="controls">
						<input type="text" name="name"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">离职日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" name="leavedate" type="text" onclick="WdatePicker()"/>
					  </div>
					</div>
					
					<div class="control-group">
					  <label class="control-label">离职原因</label>
					  <div class="controls">
						<textarea rows="4" cols="" name="reason"></textarea>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">批准人</label>
					  <div class="controls">
						<input type="text" name="approver"/>
					  </div>
					</div>										
					<div class="form-actions">
					  <input class="btn btn-primary" type="submit" value="保存"/>
					  <a href="#" class="btn btn-info">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
