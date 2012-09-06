<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>添加新的招聘项目</title>
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
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/zhaopin/save">	
					<div class="control-group">
					  <label class="control-label">招聘岗位名称</label>
					  <div class="controls">
						<input type="text" name="position" >
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">开始时间</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="begindate"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">岗位需求</label>
					  <div class="controls">
						<input type="text"  name="content">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">需求部门</label>
					  <div class="controls">
						<select name="names">
						<c:forEach items="${departList }" var="dlist">
						  <option value="${dlist.englishnames}">${dlist.names}</option>
						  </c:forEach>				  
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">需求数量</label>
					  <div class="controls">
						<input type="text" name="requirenum" >
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">招聘渠道</label>
					  <div class="controls">
						<select name="qudao">
						  <option value="人才市场">人才市场</option>
						  <option value="面试">面试</option>						  
						  <option value="内部推荐">内部推荐</option>						  
						  <option value="其他">其他</option>						  
						</select>
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
					  <a class="btn" type="button" href="${basePath}/zhaopin/showAllzhaopin">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
