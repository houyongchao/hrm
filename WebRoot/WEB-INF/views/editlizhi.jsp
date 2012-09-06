<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>编辑离职人员</title>
    <style type="text/css">
    	input{
    		height:28px;
    	}
    
    </style>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			<div class="span12 well"  >
				<form action="${basePath }/lizhi/saveedit" method="post" class="bs-docs-example form-horizontal" style="padding-left:150px;">	
					<div class="control-group">
					  <label class="control-label">姓名</label>
					  <div class="controls">
						<input type="text" value="${dimission.work.names }" name="names">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">离职日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" value="${dimission.leavedate }" name="leavedate"/>
					  </div>
					</div>
					
					<div class="control-group">
					  <label class="control-label">离职原因</label>
					  <div class="controls">
						<input type="text" name="reason" value="${dimission.reason }">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">批准人</label>
					  <div class="controls">
						<input type="text" name="approver" value="${dimission.approver }"/>
					  </div>
					</div>										
					<div class="form-actions">
					  <input class="btn btn-primary" type="submit" value="保存"/>
					  <a href="${basePath }/lizhi/showall" class="btn btn-info">返回</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
