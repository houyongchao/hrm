<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>添加新的培训机构</title>
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
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/peixunjigou/save">	
					<div class="control-group">
					  <label class="control-label">机构名称</label>
					  <div class="controls">
						<input type="text" name="names">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">机构地址</label>
					  <div class="controls">
						<input type="text" name="address">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">机构电话</label>
					  <div class="controls">
						<input type="text" name="contactemail">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">联系人</label>
					  <div class="controls">
						<input type="text" name="contact">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">联系人电话</label>
					  <div class="controls">
						<input type="text" name="contacttels">
					  </div>
					</div>
					<div class="form-actions">
					  <button class="btn btn-primary" type="submit">保存</button>
					  <a class="btn" type="button" href="${basePath}/peixunjigou/showAlljigou">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
