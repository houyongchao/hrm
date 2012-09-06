<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>添加考核人员</title>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			
			<div class="span12"  >
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/kaohe/save">	
					<div class="control-group">
					  <label class="control-label">姓名</label>
					  <div class="controls">
						<!---考核的人名从职员表中读取出来 -->
						<select name="names">
							<c:forEach items="${wlist}" var="wl">
							  <option value="${wl.names}">${wl.names}</option>
						  </c:forEach>						  
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">考核类别</label>
					  <div class="controls">
						<select name="category">
						  <option value="能力评估">能力评估</option>
						  <option value="业绩评估">业绩评估</option>						  
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">考核期间</label>
					  <div class="controls">
						<select name="during">
						  <option value="第一季度">第一季度</option>
						  <option value="第二季度">第二季度</option>
						  <option value="第三季度">第三季度</option>
						  <option value="第四季度">第四季度</option>
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">考核日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="dates"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">考核等级</label>
					  <div class="controls">
						<select name="level">
						  <option value="优秀">优秀</option>
						  <option value="良好">良好</option>
						  <option value="中等">中等</option>
						  <option value="及格">及格</option>
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">考核评价</label>
					  <div class="controls">
						<textarea rows="3" name="evaluate" ></textarea>
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
					  <a class="btn" type="button" href="${basePath}/kaohe/showAllkaohe">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
