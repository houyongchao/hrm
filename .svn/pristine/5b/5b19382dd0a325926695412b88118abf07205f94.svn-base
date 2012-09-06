<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>编辑培训课程</title>
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
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/peixunkecheng/update">
					<div class="control-group">
					  <label class="control-label">课程名</label>
					  <div class="controls">
						<input type="text" value="${trainning.kechengname}" name="kechengname">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">培训对象名</label>
					  <div class="controls">
						<input type="text" readonly="readonly" value="${trainning.worker.names}" name="worker.names">
						<input type="hidden" name="worker.id"  value="${trainning.worker.id }"/>
						<input type="hidden" value="${trainning.id}"  name="id">
						<input type="hidden" value="${trainning.agency.id}"  name="agency.id">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">课程类别</label>
					  <div class="controls">
						<select name="category">
						  <option value="营销类">营销类</option>
						  <option value="管理类">管理类</option>
						  <option value="生产类">生产类</option>						  
						</select>
					  </div>
					</div>					
					<div class="control-group">
					  <label class="control-label">开始时间</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="begindate" value="${trainning.begindate }"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">结束时间</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="enddate" value="${trainning.enddate }"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">课时</label>
					  <div class="controls">
						<input type="text" value="${trainning.keshi}" name="keshi">
					  </div>
					</div>					
					<div class="control-group">
					  <label class="control-label">备注</label>
					  <div class="controls">
						<textarea rows="3" name="beizhu">${trainning.beizhu}</textarea>
					  </div>
					</div>
					<div class="form-actions">
					  <button class="btn btn-primary" type="submit">保存</button>
					  <a class="btn" type="button" href="${basePath}/peixunkecheng/showAllkecheng">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
