<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加面试</title>
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
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/mianshi/save">	
					<div class="control-group">
					  <label class="control-label">应聘人</label>
					  <div class="controls">
						<input type="text" name="interviewee">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">应聘岗位</label>
					  <div class="controls">
						<input type="text" name="position">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">面试日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="dates"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">面试人</label>
					  <div class="controls">
						<input type="text" name="interviewer">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">面试结果</label>
					  <div class="controls">
						<input type="text" name="result">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">审核人</label>
					  <div class="controls">
						<input type="text" name="approver">
					  </div>
					</div>									
					
					<div class="control-group">
					  <label class="control-label">面试内容</label>
					  <div class="controls">
						<textarea rows="3" name="content"></textarea>
					  </div>
					</div>
					<div class="form-actions">
					  <button class="btn btn-primary" type="submit">保存</button>
					  <a class="btn" type="button" href="${basePath}/mianshi/showAllmianshi">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
  </body>
</html>
