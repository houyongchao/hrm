<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 
    <title>编辑休假人员</title>
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
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/vacation/update">	
					<div class="control-group">
					  <label class="control-label">姓名</label>
					  <div class="controls">
						<input type="text" readonly="readonly" value="${vacation.worker.names}" name="worker.names">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">工号</label>
					  <div class="controls">
						<input type="text" value="${vacation.id}" readonly="readonly" name="id">
						<input type="hidden" name="worker.id"  value="${vacation.worker.id }"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">申请日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="applicationdate" value="${vacation.applicationdate }"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">休假类型</label>
					  <div class="controls">
						<select name="category">
						  <option value="产假">产假</option>
						  <option value="事假">事假</option>	
						  <option value="其他">其他</option>
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">开始日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="begindate" value="${vacation.begindate }"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">结束日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="enddate" value="${vacation.enddate }"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">销假日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="xiaojiadate" value="${vacation.xiaojiadate }"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">休息天数</label>
					  <div class="controls">
						<input type="text" value="${vacation.days}" name="days">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">批准人</label>
					  <div class="controls">
						<input type="text" value="${vacation.approver}" name="approver">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">备注</label>
					  <div class="controls">
						<textarea rows="3"  name="beizhu">${vacation.beizhu}</textarea>
					  </div>
					</div>
					<div class="form-actions">
					  <button class="btn btn-primary" type="submit">保存</button>
					  <a class="btn" type="button" href="${basePath}/vacation/showAllVacation">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
